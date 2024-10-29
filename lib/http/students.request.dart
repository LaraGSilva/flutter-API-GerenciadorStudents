//classe para consumir a api
import 'package:dio/dio.dart';
import 'package:untitled/domain/Student.dart';
import 'package:untitled/http/students.request.dart';
class StudentRequest{

  final dio = Dio();

  Future<List<Student>> getStudents() async {
    final jsonResponse = await dio.get('https://gdapp.com.br/api/students');
    final responseData = jsonResponse.data;

    return List<Student>.from(
      responseData.map((x) => Student.fromJson(x))
    );
  }

  Future<bool> createStudent(Student student) async{
    final response = await dio.post('https://gdapp.com.br/api/student', data: {student.toJson()});
    return true;
  }
}
