import unittest
from main import Student


class TestStudent(unittest.TestCase):

    def test_name_property(self):
        student = Student.from_full_name("Muxtorov Shaxzodbek")
        self.assertEqual(student.name, "Muxtorov")

    def test_surname_property(self):
        student = Student.from_full_name("Muxtorov Shaxzodbek")
        self.assertEqual(student.surname, "Shaxzodbek")


if __name__ == "__main__":
    unittest.main()
