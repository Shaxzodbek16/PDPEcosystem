def liner_search(content: list, searching: int):
	for i in content:
		if i == searching:
			return content.index(i)
	return None


list_: list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
target = 8

print(liner_search(list_, target))
