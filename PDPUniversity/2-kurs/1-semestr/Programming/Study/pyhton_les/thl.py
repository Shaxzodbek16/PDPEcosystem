def lesson():
    list_ = [1, 2, 3, 4, 5, 6, 7, 8]
    iter_list = iter(list_)  # iter expects Iterable type object
    print(next(iter_list))
    print(next(iter_list))

    list_2 = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15]]
    updated_list = list()
    for x in list_2:
        for y in x:
            updated_list.append(y)
    print(updated_list)


def factorial(num):
    sum_of_fac = 1
    for i in range(2, num + 1):
        sum_of_fac = sum_of_fac * i
    return sum_of_fac


def math_table(num):
    for i in range(1, num + 1):
        print(f'\n{i} table\n')
        for j in range(1, 11):
            print(f"{i} x {j} = {i * j}")


def highest_student(info):
    student_averages = {
        name: sum(marks) / len(marks)
        for name, marks in info
    }

    return dict(sorted(
        student_averages.items(),
        key=lambda x: (-x[1], x[0])
    ))


if __name__ == '__main__':
    data = [
        ('Alina', [4, 3, 5]),
        ('Ivan', [5, 4, 4]),
        ('Cholie', [7, 8, 9]),
        ('Islom', [6, 3, 4]),
        ('Alex', [7, 8, 9]),
    ]

    marks = highest_student(data)

    print("\nStudent Rankings:")
    print("-" * 40)
    for rank, (student, average) in enumerate(marks.items(), 1):
        print(f"Rank {rank}: {student:10} - Average: {average:.2f}")
