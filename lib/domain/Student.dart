class Student {
  String? rm;
  String? name;
  int? age;

  Student({this.rm, this.name, this.age});

  Student.fromJson(Map<String, dynamic> json) {
    rm = json['rm'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rm'] = this.rm;
    data['name'] = this.name;
    data['age'] = this.age;
    return data;
  }

  @override
  String toString() {
    return 'Student{name: $name, rm: $rm, age: $age}';
  }
}