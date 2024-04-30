// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intern_project/user/view/screens/signIn/createNewACC.dart';
import 'package:intern_project/user/view/screens/welcome.dart';
import 'package:intern_project/user/view/widgets/smallButton.dart';
import '../../util/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obsecureText = true;
  bool isRemember = false;
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;

  login() {
    final isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      setState(() {
        isLogin = true;
      });
      // Future.delayed(Duration(seconds: 2), () {
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => HomeScreen()));
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: navyBlue,
              size: 30,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign in to EMS",
                      style: TextStyle(
                        fontSize: 40,
                        color: navyBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: TextFormField(
                            cursorColor: navyBlue,
                            validator: (value) {
                              if (value == "") {
                                return 'Please enter your email';
                              }
                              // Regular expression for email validation
                              final emailRegex =
                                  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                              if (!emailRegex.hasMatch(value!)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: navyBlue,
                              ),
                              labelText: "Email",
                              labelStyle: TextStyle(color: navyBlue),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: navyBlue,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: navyBlue, // Border color when focused
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          obscureText: _obsecureText,
                          validator: (value) {
                            if (value == "") {
                              return "Please enter your password!";
                            } else if (value!.length < 8) {
                              return "Please enter valid password!";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_clock_outlined,
                              color: navyBlue,
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              child: Icon(
                                _obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: navyBlue,
                              ),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: navyBlue),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue, // Border color when focused
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Remember me",
                              style: TextStyle(
                                  color: navyBlue, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isRemember = !isRemember;
                                });
                              },
                              child: Icon(
                                !isRemember
                                    ? Icons.check_box_outline_blank
                                    : Icons.check_box,
                                color: navyBlue,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: navyBlue, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {
                          login();
                        },
                        child: !isLogin
                            ? smallButton(
                                btnName: "Login",
                              )
                            : CircularProgressIndicator(
                                color: navyBlue,
                              )),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateNewAccPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: navyBlue, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 140,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {},
                            child: Text('Term of Use'),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Text('Privacy Policy'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text('© 2024 All rights reserved'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
