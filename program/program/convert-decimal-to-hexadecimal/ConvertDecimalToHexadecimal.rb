def decimal_to_hexadecimal(decimal)
  # Define the hexadecimal digits
  hex_digits = "0123456789ABCDEF"

  # Initialize an empty string to store the hexadecimal result
  hexadecimal = ""

  # Continue dividing the decimal number until it becomes 0
  while decimal > 0
    # Get the remainder when divided by 16
    remainder = decimal % 16

    # Prepend the corresponding hexadecimal digit to the result string
    hexadecimal = hex_digits[remainder] + hexadecimal

    # Update the decimal by integer division
    decimal /= 16
  end

  return hexadecimal
end

# Input: Decimal number
decimal_number = 255

# Convert and print the result
hexadecimal_number = decimal_to_hexadecimal(decimal_number)
puts "Decimal: #{decimal_number} => Hexadecimal: #{hexadecimal_number}"
