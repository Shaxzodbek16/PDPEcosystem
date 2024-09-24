// Universitet uchun ichki recordlarni belgilaydigan Dart dasturini yozing. Tashqi
// record universitetni nomi va bo'limlar ro'yxati bilan ifodalashi kerak. Har bir
// bo'lim bo'lim nomi va professorlar ro'yxati uchun fieldlar bilan record bo'lishi
// kerak. Har bir professor professorning ismi va ular o'qitadigan kurslar ro'yxati
// uchun fieldlar bilan record bo'lishi kerak. Pattern matchingdan foydalanib,
// yangi bo'limlar, professorlar va kurslar qo'shish funksiyalarini amalga
// oshiring.

class University {
  final String name;
  final List<Department> departments;

  University({required this.name, required this.departments});
}

class Department {
  final String name;
  final List<Professor> professors;

  Department({required this.name, required this.professors});
}

class Professor {
  final String name;
  final List<String> courses;

  Professor({required this.name, required this.courses});
}

University addDepartment(University university, Department department) {
  return University(
    name: university.name,
    departments: [...university.departments, department],
  );
}

University addProfessor(
    University university, String departmentName, Professor professor) {
  return University(
    name: university.name,
    departments: university.departments.map((dept) {
      return dept.name == departmentName
          ? Department(
              name: dept.name, professors: [...dept.professors, professor])
          : dept;
    }).toList(),
  );
}

University addCourse(University university, String departmentName,
    String professorName, String course) {
  return University(
    name: university.name,
    departments: university.departments.map((dept) {
      return dept.name == departmentName
          ? Department(
              name: dept.name,
              professors: dept.professors.map((prof) {
                return prof.name == professorName
                    ? Professor(
                        name: prof.name, courses: [...prof.courses, course])
                    : prof;
              }).toList())
          : dept;
    }).toList(),
  );
}

void main() {
  final university = University(
    name: 'PDP',
    departments: [
      Department(
        name: 'Students',
        professors: [
          Professor(name: 'To\'lqin', courses: ['Students', 'Unicorn']),
        ],
      ),
    ],
  );
}
