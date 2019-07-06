INITIALIZATION:
0x00  LDA 0             # Initializes the result loading it in register A.
0x02  STA [RESULT]      # Stores register A in the result memory address.

0x04  LDA 4             # Initializes the factor loading it in register A.
0x06  STA [FACTOR]      # Stores register A in the factor memory address.
0x08  OUTA              # Output the factor.

0x09  LDA 3             # Initializes the multiplicand loading it in register A.
0x0B  STA [MULT]        # Stores register A in the multiplicand memory address.
0x0D  OUTA              # Output the multiplicand.
0x0E  JPZ [END]         # If multiplicand equals zero goes to the end.

START:                  # 0x10
0x10  LDA [RESULT]      # Loads the factor in register A.
0x12  ADD [FACTOR]      # Adds the factor.
0x14  STA [RESULT]      # Stores the result of adition in result.

0x16  LDA [MULT]        # Loads the multiplicand in register A.
0x18  SUB 1             # Decrement the multiplicand.
0x1A  JPZ [END]         # If multiplicand equals zero goes to the end.
0x1C  STA [MULT]        # Stores the multiplicand.

0x1E  JP  [START]       # Jumps to start.

END:                    # 0x20
0x20  OUT [RESULT]      # Output the result.
0x22  HALT              # Halts the program.

# VARIABLES:
# 0x23  FACTOR
# 0x24  MULT
# 0X25  RESULT
