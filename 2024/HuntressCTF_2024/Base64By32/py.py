import base64

def decode_base64_multiple_times(file_path, num_iterations=32):
  """Decodes the contents of a file using base64 repeatedly.

  Args:
    file_path: The path to the file to decode.
    num_iterations: The number of times to decode the file using base64.

  Returns:
    The decoded contents of the file.
  """

  with open(file_path, "r") as f:
    data = f.read()

  for _ in range(num_iterations):
    try:
      data = base64.b64decode(data)
    except Exception as e:
      print(f"Error decoding: {e}")
      break

  return data

# Example usage
file_path = "base64by32"
num_iterations = 32
decoded_data = decode_base64_multiple_times(file_path, num_iterations)

print(decoded_data)