class MyTester {
  static const String collectioName = 'tester';
  String? name;
  String? email;
  int? phone;
  MyTester({this.name, this.email, this.phone});
  MyTester.fromFireStore(Map<String, dynamic> data)
      : this(
          email: data['email'],
          name: data['name'],
          phone: data['phone'],
        );
  Map<String, dynamic> toFireStore() {
    return {
      'email': email,
      'name': name,
      'phone': phone,
    };
  }
}
