def find_most_frequent_char(string):
    char_count = {}
    for char in string:
        char_count[char] = char_count.get(char, 0) + 1
    max_count = 0
    most_frequent_char = None
    for char, count in char_count.items():
        if count > max_count:
            max_count = count
            most_frequent_char = char

    return most_frequent_char
