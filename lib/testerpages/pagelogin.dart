import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'understandtester1.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester1.dart';

import '../dialogeUtils.dart';

class childtesterlogin extends StatefulWidget {
  State<childtesterlogin> createState() => _pg();
}

class _pg extends State<childtesterlogin> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  String alerts = " ";
  @override
  Widget build(BuildContext buildcontext) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/bg5.png'),
        )),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: screenSize.height * (280 / screenSize.height)),
              SizedBox(
                  width: screenSize.width * (300 / screenSize.width),
                  height: screenSize.height * (55 / screenSize.height),
                  child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.trim().isEmpty || value == null) {
                        return "من فضلك ادخل بريدك الالكتروني";
                      } else if (value!.trim().endsWith('@child.com')) {
                        return null;
                      } else {
                        return " @child.com يجب ان ينتهي بريدك الالكنروني ب ";
                      }
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              BorderSide(color: Color(0xff1B6EA5), width: 3),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              left: screenSize.width * (20 / screenSize.width),
                              right:
                                  screenSize.width * (40 / screenSize.width)),
                          child: Image.asset(
                            'images/emails.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        hintText: "ادخل بريدك الالكتروني",
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff555555),
                        )),
                  )),
              SizedBox(
                height: screenSize.height * (30 / screenSize.height),
              ),
              SizedBox(
                width: screenSize.width * (300 / screenSize.width),
                height: screenSize.height * (55 / screenSize.height),
                child: TextFormField(
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
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          color: Color(0xff1B6EA5),
                          width: screenSize.width * (3 / screenSize.width)),
                    ), //0xff1B6EA5 0xff007CB2

                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: screenSize.width * (30 / screenSize.width),
                          right: 100),
                      child: Image.asset(
                        'images/icon.png',
                        width: 25,
                        height: 30,
                      ),
                    ),
                    hintText: "ادخل كلمة السر",
                    contentPadding: EdgeInsets.symmetric(vertical: 6),
                    hintStyle: TextStyle(
                      fontSize: screenSize.width * (15 / screenSize.width),
                      color: Color(0xff555555),
                    ),
                  ),
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.04 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "year :",
                    style: TextStyle(color: Color(0xff1B6EA5), fontSize: 15),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width*.02 ,),
                  PopupMenuButton(
                    initialValue: variables.year,
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<int>>[
                        for (int count = 5; count <= 15; count++)
                          PopupMenuItem<int>(
                              value: count, child: Text('$count')),
                      ];
                    },
                    onSelected: (v) {
                      setState(() {
                        variables.year = v;
                        alerts = " ";
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1B6EA5), width: 3),
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Color(0xff8EC4F1), Color(0xffFFFFFF)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text(variables.year.toString(),
                                style: TextStyle(
                                    color: Color(0xff00567D), fontSize: 20)),
                          ),
                          Image(
                            image: AssetImage('images/greentriangle.png'),
                            width: 15,
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width*.02 ,),
                  Text(
                    "month :",
                    style: TextStyle(color: Color(0xff1B6EA5), fontSize: 15),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width*.02 ,),
                  PopupMenuButton(
                    initialValue: variables.month,
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<int>>[
                        for (int count = 1; count <= 11; count++)
                          PopupMenuItem<int>(
                              value: count, child: Text('$count')),
                      ];
                    },
                    onSelected: (v) {
                      setState(() {
                        variables.month = v;
                        alerts = " ";
                      });
                    },
                    child: Container(
                      // width: 100,
                      // height: 40,
                      width: 70,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1B6EA5), width: 3),
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Color(0xff8EC4F1), Color(0xffFFFFFF)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text(variables.month.toString(),
                                style: TextStyle(
                                    color: Color(0xff00567D), fontSize: 20)),
                          ),
                          Image(
                            image: AssetImage('images/greentriangle.png'),
                            width: 15,
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.04 ,),
              GestureDetector(
                onTap: () {
                  signIn();
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: screenSize.height * (30 / screenSize.height)),
                  width: screenSize.width * (280 / screenSize.width),
                  height: screenSize.height * (45 / screenSize.height),
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
                      ),
                    ],
                    border: Border.all(width: 1, color: Color(0xff007CB4)),
                  ),
                  child: Center(
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenSize.width * (24 / screenSize.width),
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 20),
              )
            ],
          ),
        ),
      ),
    ));
  }

  var authService = FirebaseAuth.instance;
  void signIn() {
    if (formKey.currentState?.validate() == false) {
      return;
    } else {
      showLoading(context, '...تحميل');
      authService
          .signInWithEmailAndPassword(
        email: nameController.text,
        password: passwordController.text,
      )
          .then((UserCredential) {
        hideLoading(context);
        showMessage(context, 'تم تسجيل دخولك بنجاح');
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return UnderstandTester2Class();
          },
        ));
      }).onError((error, stackTrace) {
        hideLoading(context);
        showMessage(context,
            'لقد قمت ب ادخال بريد الكتروني غير صحيح او كلمة السر غير صحيحة');
      });
    }

    // loginviewmodel.login(emailController.text, passwordController.text);
    // authService.signInWithEmailAndPassword(email: emailController.text, password:passwordController.text)
    //     .then((value) => print(value.user?.email))
    //     .onError((error, stackTrace) => print("exist problem"));
  }
}

class variables {
  // static int day = 0;
  static int year = 5;
  static int month = 5;
}
