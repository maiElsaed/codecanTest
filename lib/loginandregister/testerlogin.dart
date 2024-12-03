import 'package:codecansecond/dialogeUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'page3.dart';
// import 'oldnewchildtester.dart';
import 'package:codecansecond/logicoperation/emailvalidation.dart';
import 'testerregister.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

class Page2Class extends StatefulWidget {
  State<Page2Class> createState() => _pg();
}

class _pg extends State<Page2Class> {
  static String mail = " ", password = " ", alert = " ";
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  SqlDb obg = SqlDb();
  @override
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
      child: Material(
        // child: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'images/background2.jpeg',
              ),
            )),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'images/page2image.png',
                    height: 200,
                    width: 216,
                  ),
                  Text("مرحبًا بك",
                      style: TextStyle(
                          fontSize: 51,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1B6EA5))),
                  Text(
                    "..فى ”كودكان“ لاختبار ذكاء الأطفال",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xff686E77)),
                  ),
                  SizedBox(height: 20),
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
                            return " من فضلك ادخل بريد الكتروني صحيح";
                          }
                        },
                        // obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Color(0xff1B6EA5), width: 3),
                            ), //0xff1B6EA5 0xff007CB2
                            // prefixIcon: Icon(Icons.person_search_rounded),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20, right: 40),
                              child: Image.asset(
                                'images/emails.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            hintText: "ادخل البريد الالكتروني",
                            contentPadding: EdgeInsets.symmetric(vertical: 6),
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xff555555),
                            )),
                      )),
                  SizedBox(height: 20),
                  SizedBox(
                      width: 300,
                      height: 55,
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
                            // fillColor: Color(0xff555555),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Color(0xff1B6EA5), width: 3),
                            ), //0xff1B6EA5 0xff007CB2
                            // prefixIcon: Icon(Icons.person_search_rounded),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 30, right: 95),
                              child: Image.asset(
                                'images/passwordicon.png',
                                width: 25,
                                height: 30,
                              ),
                            ),
                            hintText: "ادخل كلمة السر",
                            contentPadding: EdgeInsets.symmetric(vertical: 6),
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xff555555),
                            )),
                      )),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () async {
                      // obg.db;
                      // int x1=await obg.inserData('INSERT INTO Test(id,department,question,answer,grade) '
                      //     'VALUES(1,"u","لو جرحت اصبعك ماذا ستفعل","null",0)');
                      // print("start");
                      // int a= await obg.inserData("INSERT INTO 'questiondata'('id','department','question','answer','grade') VALUES (0,'kk','kl','kl',8)");
                      // print("end");
                      // print(a);
                      // print(a);

                      // if(formKey.currentState?.validate()==false){
                      //   return;
                      // }
                      signIn();
                      //Navigator.of(context).pushNamed("Page5Class");
                    },
                    child: Container(
                      width: 210,
                      height: 45,
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
                          "تسجيل الدخول",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Page3Class();
                        },
                      ));
                    },
                    child: Container(
                      width: 280,
                      height: 45,
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
                          "انشا حساب جديد",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 30),
                    child: Text(alert,
                        style: TextStyle(color: Colors.red, fontSize: 15)),
                  )
                ],
              ),
            )),
      ),
      //)
    );
  }

  var authService = FirebaseAuth.instance;
  void signIn() {
    if (formKey.currentState?.validate() == false) {
      return;
    } else {
      showLoading(context, 'تحميل...');
      authService
          .signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      )
          .then((UserCredential) {
        hideLoading(context);
        showMessage(context, 'تم تسجيل دخولك بنجاح');
        Navigator.of(context).pushNamed("Page5Class");
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
