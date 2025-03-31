import sys
import argparse

class WaduzitdoProgram:
    def __init__(self, source: bytes, delim: bytes = None) -> None:
        self.insts = []
        self.input = []
        self.current_char = ''
        self.match_flag = False
        self.markers = []
        self.marker_indices = {}  # Maps PC positions to marker indices
        self.accept_char_positions = []  # Stores positions of AcceptChar instructions
        self.jump_positions = []  # Stores positions of Jump instructions
        self.forward_jumps = {}  # Will store precomputed jump targets
        self.pc = 0

        self.parse(source, delim)

    def _parse_inst(self, token: str) -> tuple:
        if not token or token.isspace():
            return None
            
        if token[0] == '*':
            marker_index = len(self.markers)
            marker_position = len(self.insts)
            self.markers.append(marker_position)
            self.marker_indices[marker_position] = marker_index
            return self._parse_inst(token[1:])

        if token[0] == 'Y':
            if len(token) > 1:
                inner_inst = self._parse_inst(token[1:])
                if inner_inst:
                    return ('Conditional', True) + inner_inst
            return None
        elif token[0] == 'N':
            if len(token) > 1:
                inner_inst = self._parse_inst(token[1:])
                if inner_inst:
                    return ('Conditional', False) + inner_inst
            return None

        if token[0] == 'T':
            return ('Text', token[2:] if len(token) > 2 else '')
        elif token[0] == 'A':
            return ('AcceptChar',)
        elif token[0] == 'M':
            parts = token.split(':', 1)
            char = parts[1] if len(parts) > 1 else ''
            return ('MatchChar', char)
        elif token[0] == 'J':
            parts = token.split(':', 1)
            if len(parts) > 1:
                try:
                    return ('Jump', int(parts[1].strip()))
                except ValueError:
                    print(f'Invalid jump value: {parts[1]}')
                    sys.exit(1)
            return ('Jump', 0)  # Default jump to marker 0 if no value provided
        elif token[0] == 'S':
            return ('Stop',)
        else:
            print(f'Unknown token: {token}')
            sys.exit(1)

    def parse(self, source: bytes, delim: bytes = None) -> None:
        if delim is None:
            tokens = source.decode().splitlines()
        else:
            tokens = [token.decode() for token in source.split(delim)]

        # Initialize with marker 0 at position 0
        self.markers = [0]
        self.marker_indices[0] = 0

        for token in tokens:
            inst = self._parse_inst(token)
            if inst:
                curr_pos = len(self.insts)
                if inst[0] == 'AcceptChar':
                    self.accept_char_positions.append(curr_pos)
                elif inst[0] == 'Jump':
                    self.jump_positions.append(curr_pos)
                # Handle nested conditional jumps
                elif inst[0] == 'Conditional' and len(inst) > 2 and inst[2] == 'Jump':
                    self.jump_positions.append(curr_pos)
                self.insts.append(inst)

        # Precompute only the necessary forward marker locations
        self._compute_forward_markers()

    def _compute_forward_markers(self):
        """
        Precompute the forward markers only for positions with Jump instructions.
        Creates a mapping from (pc_position, jump_count) to target_position.
        """
        self.forward_jumps = {}
        
        # For each position with a Jump instruction
        for pos in self.jump_positions:
            # Get the instruction at this position
            inst = self.insts[pos]
            
            # For conditional jumps, extract the jump part
            if inst[0] == 'Conditional' and len(inst) > 2 and inst[2] == 'Jump':
                jump_count = inst[3]
            elif inst[0] == 'Jump':
                jump_count = inst[1]
            else:
                continue  # Skip if not a jump instruction
                
            # Skip J:0 as it's handled separately
            if jump_count == 0:
                continue
                
            # Find the target for this specific jump count
            target_pos = self._find_nth_marker_after(pos, jump_count)
            
            if target_pos is not None:
                # Store only this specific jump target
                if pos not in self.forward_jumps:
                    self.forward_jumps[pos] = {}
                self.forward_jumps[pos][jump_count] = target_pos

    def _find_nth_marker_after(self, start_pos, n):
        """
        Find the position of the nth marker after the given position.
        Returns None if not enough markers found.
        """
        count = 0
        for marker_pos in sorted(self.markers):
            if marker_pos > start_pos:
                count += 1
                if count == n:
                    return marker_pos
        return None

    def _accept_char(self) -> None:
        if not self.input:
            # Read in one character from stdin
            self.current_char = sys.stdin.read(1)
            if self.current_char == '\n':
                # Don't read in newline characters
                self.current_char = sys.stdin.read(1)
        else:
            # Pop the first character from the input buffer
            self.current_char = self.input.pop(0)

    def _run_instruction(self, inst: tuple) -> None:
        if inst[0] == 'Conditional':
            # Only run the inner instruction if the match flag matches the condition
            if inst[1] == self.match_flag:
                inner_inst = inst[2:]
                self._run_instruction(inner_inst)
            else:
                self.pc += 1
            return

        elif inst[0] == 'Stop':
            self.pc = len(self.insts)
            return

        elif inst[0] == 'Jump':
            jump_index = inst[1]
            if jump_index == 0:
                # Special case: J:0 jumps backward to the most recent A command
                # Binary search for the most recent AcceptChar position
                target_pos = -1
                left, right = 0, len(self.accept_char_positions) - 1
                
                while left <= right:
                    mid = (left + right) // 2
                    if self.accept_char_positions[mid] < self.pc:
                        target_pos = self.accept_char_positions[mid]
                        left = mid + 1
                    else:
                        right = mid - 1
                
                if target_pos != -1:
                    self.pc = target_pos
                else:
                    self.pc = 0  # If no AcceptChar found, jump to beginning
            else:
                # O(1) jump using precomputed table
                if self.pc in self.forward_jumps and jump_index in self.forward_jumps[self.pc]:
                    self.pc = self.forward_jumps[self.pc][jump_index]
                else:
                    # If not precomputed, find it on demand
                    target_pos = self._find_nth_marker_after(self.pc, jump_index)
                    if target_pos is not None:
                        self.pc = target_pos
                    else:
                        print(f"Error: Jump target {jump_index} markers ahead not found")
                        self.pc = len(self.insts)  # Stop execution
            return

        elif inst[0] == 'Text':
            print(inst[1])

        elif inst[0] == 'AcceptChar':
            self._accept_char()

        elif inst[0] == 'MatchChar':
            self.match_flag = self.current_char == inst[1]

        self.pc += 1

    def run(self, input=None, debug=False) -> None:
        self.pc = 0
        self.input = list(input) if input else []
        self.match_flag = False
        
        while self.pc < len(self.insts):
            inst = self.insts[self.pc]
            if debug:
                print(f"PC: {self.pc}, Inst: {inst}, Char: '{self.current_char}', Match: {self.match_flag}")
            self._run_instruction(inst)


def main():
    parser = argparse.ArgumentParser(description='Waduzitdo Program Interpreter')
    parser.add_argument('source_file', help='Path to the Waduzitdo source file')
    parser.add_argument('--debug', '-d', action='store_true', help='Enable debug mode')
    parser.add_argument('--delimiter', '-l', help='Specify a custom delimiter for tokens')
    parser.add_argument('--input', '-i', help='Provide input string instead of reading from stdin')
    parser.add_argument('--show-instructions', '-s', action='store_true', help='Display parsed instructions')

    args = parser.parse_args()

    try:
        with open(args.source_file, 'rb') as f:
            source = f.read()
    except FileNotFoundError:
        print(f"Error: Source file '{args.source_file}' not found")
        sys.exit(1)
    except IOError as e:
        print(f"Error reading source file: {e}")
        sys.exit(1)

    delim = args.delimiter.encode() if args.delimiter else None
    
    try:
        waduzitdo = WaduzitdoProgram(source, delim=delim)
        
        if args.show_instructions or args.debug:
            print("Markers:", waduzitdo.markers)
            print("Jump positions:", waduzitdo.jump_positions)
            print("AcceptChar positions:", waduzitdo.accept_char_positions)
            print("Instructions:")
            for i, inst in enumerate(waduzitdo.insts):
                marker = "* " if i in waduzitdo.marker_indices else "  "
                print(f"{i}: {marker}{inst}")
            print("Precomputed jump targets:")
            for pos, targets in waduzitdo.forward_jumps.items():
                if targets:
                    print(f"  From PC {pos}: {targets}")
            print()
        
        waduzitdo.run(input=args.input, debug=args.debug)
    except Exception as e:
        print(f"Error during execution: {e}")
        if args.debug:
            import traceback
            traceback.print_exc()
        sys.exit(1)


if __name__ == '__main__':
    main()