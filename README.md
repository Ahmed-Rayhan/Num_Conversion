# Decimal to Binary, Octal, and Hexadecimal Converter in MATLAB

This MATLAB script converts a given decimal number to its binary, octal, and hexadecimal equivalents using custom functions.

## How to Use

1. **Run the Script:**
   - Execute the script in MATLAB.

2. **Input Decimal Number:**
   - When prompted, enter a decimal number.

3. **Output:**
   - The script will display the binary, octal, and hexadecimal equivalents of the entered decimal number.

## Code Explanation

### Input Decimal Number

The script prompts the user to enter a decimal number:

    matlab
    decimal_number = input('Enter decimal: '); 

**Convert to Binary, Octal, and Hexadecimal**
The script converts the decimal number to binary, octal, and hexadecimal using custom functions:

*% Convert to binary using custom function*

    binary_value = decimalToBinary(decimal_number);

*% Convert to octal using custom function*

    octal_value = decimalToBase(decimal_number, 8);

*% Convert to hexadecimal using custom function*

    hexadecimal_value = decimalToBase(decimal_number, 16);



**

## Display the Results

**

> The script then displays the results:

    fprintf('Binary value: %s\n', binary_value);
    fprintf('Octal value: %s\n', octal_value);
    fprintf('Hexadecimal value: %s\n', hexadecimal_value);

**Custom Conversion Functions**
*Decimal to Binary*
This function converts a decimal number to its binary representation:

    function binaryStr = decimalToBinary(decimal)
        binaryStr = '';
        while decimal > 0
            remainder = mod(decimal, 2);
            binaryStr = [num2str(remainder) binaryStr];
            decimal = floor(decimal / 2);
        end
        if isempty(binaryStr)
            binaryStr = '0';
        end
    end
    

**The function iteratively divides the decimal number by 2.* 
Collects the remainders to form the binary string.

If the input is zero, it returns '0'.
Decimal to Any Base (up to 16)
This function converts a decimal number to its representation in any base up to 16:

    function baseStr = decimalToBase(decimal, base)
        digits = '0123456789ABCDEF';
        baseStr = '';
        while decimal > 0
            remainder = mod(decimal, base);
            baseStr = [digits(remainder + 1) baseStr];
            decimal = floor(decimal / base);
        end
        if isempty(baseStr)
            baseStr = '0';
        end
    end

**The function generalizes the conversion for any base up to 16*
Uses the digits string to map remainders to their respective characters.
If the input is zero, it returns '0'.
Example
Input:
Enter decimal: 1234
Output:

Binary value: 10011010010
Octal value: 2322
Hexadecimal value: 4D2
License


    This project is licensed under the MIT License - see the LICENSE file for details.
