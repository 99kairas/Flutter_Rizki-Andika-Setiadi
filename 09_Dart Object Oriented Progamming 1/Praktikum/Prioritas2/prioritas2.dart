class Course {
  String? judulCourse;
  String? deskripsiCourse;

  Course({
    this.judulCourse,
    this.deskripsiCourse,
  });

  void lihatCourse() {
    print('Nama Course : $judulCourse');
    print('Deskripsi Course : $deskripsiCourse');
  }
}

class Student extends Course{
  String? namaMahasiswa;
  String? kelasMahasiswa;
  List<Course> daftarCourses = [];

  Student({this.namaMahasiswa, this.kelasMahasiswa});

  void tambahCourse(Course courseAlterra) {
    daftarCourses.add(courseAlterra);
  }

  void hapusCourse(Course courseAlterra) {
    daftarCourses.remove(courseAlterra);
  }

  void lihatCourse() {
    print('Nama Mahasiswa : $namaMahasiswa');
    print('Kelas Mahasiswa : $kelasMahasiswa');
    print('Daftar Courses : ');
    for (var courseAlterra in daftarCourses) {
      courseAlterra.lihatCourse();
    }
  }
}

void main(List<String> args) {
  var courseAlterra1 =
      Course(judulCourse: '2023 Flutter', deskripsiCourse: 'Belajar Flutter');
  var courseAlterra2 =
      Course(judulCourse: 'UI / UX', deskripsiCourse: 'Belajar Desain');
      var courseAlterra3 =
      Course(judulCourse: 'Golang', deskripsiCourse: 'Belajar Back-end');

  var studentRizki = Student(namaMahasiswa: 'Rizki', kelasMahasiswa: 'Kelas C');
  var studentAndika =
      Student(namaMahasiswa: 'Andika', kelasMahasiswa: 'Kelas B');
  var studentSetiadi =
      Student(namaMahasiswa: 'Setiadi', kelasMahasiswa: 'Kelas A');

  print('\n');
  studentRizki.tambahCourse(courseAlterra1);
  studentRizki.tambahCourse(courseAlterra2);
  studentRizki.lihatCourse();
  print('\n---------------------------------');

  studentAndika.tambahCourse(courseAlterra1);
  studentAndika.lihatCourse();
  print('\n---------------------------------');

  studentRizki.hapusCourse(courseAlterra1);
  studentRizki.lihatCourse();
  print('\n---------------------------------');

  studentSetiadi.lihatCourse();
  print('\n---------------------------------');

  studentSetiadi.tambahCourse(courseAlterra3);
  studentSetiadi.lihatCourse();
}
