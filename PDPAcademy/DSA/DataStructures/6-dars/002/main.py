def find_first_non_repeating_char(string):
    char_count = {}
    for char in string:
        char_count[char] = char_count.get(char, 0) + 1

    for char in string:
        if char_count[char] == 1:
            return char

    return "all repeated characters"
