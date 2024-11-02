#RazviOverflow
from scapy.all import *

def analyze_icmp_pcap(pcap_file):
    try:
        # Read the pcap file
        packets = rdpcap(pcap_file)
        all_packets_1st_byte = b""
        # Iterate through packets
        for packet in packets:
            # Only ping (requests
            if str(packet.getlayer(ICMP).type) == "8": 
              # Check if packet has ICMP layer
              if ICMP in packet and Raw in packet:
                  # Get payload and first byte if exists
                  payload = packet[Raw].load
                  if len(payload) > 0:
                      all_packets_1st_byte += payload[-40].to_bytes()
    except Exception as e:
        print(f"Error processing file: {e}")

    with open("final_file", "wb") as f:
      f.write(all_packets_1st_byte)

# Usage example
pcap_file = "echo_chamber.pcap"
analyze_icmp_pcap(pcap_file)