// import 'dart:js_util';

import 'package:codecansecond/dialogeUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'page2.dart';
import 'oldnewchildtester.dart';
import 'package:codecansecond/logicoperation/emailvalidation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Page3Class extends StatefulWidget {
  State<Page3Class> createState() => _pg();
}

class _pg extends State<Page3Class> {
  static String name = " ",
      phone = " ",
      password = " ",
      confirmPassword = " ",
      alerts = " ";
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
      child: Material(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'images/backgroungp3.png',
              ),
            ),
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 200),
                SizedBox(
                    width: 300,
                    height: 55,
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل اسمك";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 30, right: 50),
                            child: Image.asset(
                              'images/personicon.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          hintText: "              اسم المشرف",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 25),
                SizedBox(
                    width: 300,
                    height: 55,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل بريدك الالكتروني";
                        } else if (value!.trim().endsWith('@tester.com')) {
                          return null;
                        } else {
                          return " @tester.com يجب ان ينتهي بريدك الالكنروني ب ";
                        }
                      },
                      // obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 30),
                            child: Image.asset(
                              'images/emails.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          hintText: "      ادخل البريد الالكتروني",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 25),
                SizedBox(
                    width: 300,
                    height: 55,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل كلمة السر الخاصة بك";
                        }
                        if (value.length < 6) {
                          return "يجب ان تكون كلمة السر مكونة من 6 ارقام علي الاقل";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 35, right: 60),
                            child: Image.asset(
                              'images/icon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintText: "          ادخل كلمة السر",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 25),
                SizedBox(
                    width: 300,
                    height: 55,
                    child: TextFormField(
                      obscureText: true,
                      controller: confirmController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك قم بتأكيد كلمة السر الخاصة بك";
                        }
                        if (passwordController.text != value) {
                          return "كلمة السر غير متطابقة";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 35, right: 60),
                            child: Image.asset(
                              'images/passwordicon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintText: "          تاكيد كلمة السر",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    createAccountClicked();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50, left: 15),
                    width: 230,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1B6EA5),
                      borderRadius: BorderRadius.circular(
                        31,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff6194C1),
                          offset: Offset(0, 6),
                          blurRadius: 10,
                          // spreadRadius: 2
                        ),
                      ],
                      border: Border.all(width: 1, color: Color(0xff007CB4)),
                    ),
                    child: Center(
                      child: Text(
                        "تسجيل ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  var authService = FirebaseAuth.instance;
  void createAccountClicked() {
    if (formKey.currentState?.validate() == false) {
      return;
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return Page5Class();
        },
      ));
    }
    showLoading(context, 'تحميل...');
    authService
        .createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    )
        .then((UserCredential) {
      hideLoading(context);
      showMessage(context, 'تم تسجيل بياناتك بنجاح');
    }).onError((error, stackTrace) {
      hideLoading(context);
      showMessage(context, error.toString());
    });
    FirebaseFirestore.instance.collection('tester').add({
      'name': nameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    });
    // loginviewmodel.login(emailController.text, passwordController.text);
    // authService.signInWithEmailAndPassword(email: emailController.text, password:passwordController.text)
    //     .then((value) => print(value.user?.email))
    //     .onError((error, stackTrace) => print("exist problem"));
  }
}
