class validations{
  static bool check(var text){
    // const String email = "tony@starkindustries.com"
    return  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text);
  }
}