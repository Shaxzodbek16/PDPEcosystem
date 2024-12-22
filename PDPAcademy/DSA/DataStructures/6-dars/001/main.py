def find_first_repeating_char(string):
    char_count = {}
    for char in string:
        if char in char_count:
            return char
        char_count[char] = 1
    return "Without repeated"
