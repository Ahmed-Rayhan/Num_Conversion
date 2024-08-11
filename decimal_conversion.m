clc;
clear all;
close all;

decimal_number =input('Enter decimal: ');

binary_value = decimalToBinary(decimal_number);

octal_value = decimalToBase(decimal_number, 8);

hexadecimal_value = decimalToBase(decimal_number, 16);

fprintf('Binary value: %s\n', binary_value);
fprintf('Octal value: %s\n', octal_value);
fprintf('Hexadecimal value: %s\n', hexadecimal_value);

% Function to convert decimal to binary
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

% Function to convert decimal to any base (up to 16)
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
