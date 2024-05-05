// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intern_project/user/view/screens/signIn/profile.dart';
import 'package:intern_project/util/colors.dart';
import 'package:intern_project/user/view/widgets/smallButton.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obsecureText = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isCreated = false;

  verify() {
    final isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      setState(() {
        isCreated = true;
      });
      Future.delayed(Duration(seconds: 2), () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Sign up to EMS",
                      style: TextStyle(
                        fontSize: 40,
                        color: navyBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("Create a new account"),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          controller: userNameController,
                          validator: (value) {
                            if (value == "" || value!.length < 8) {
                              return "Username must be greater or equal to 8 characters!";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: navyBlue,
                            ),
                            labelText: "Username",
                            labelStyle: TextStyle(color: navyBlue),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue, // Border color when focused
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          controller: emailController,
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
                              Icons.email,
                              color: navyBlue,
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: navyBlue),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          keyboardType: TextInputType.number,
                          controller: phoneController,
                          validator: (value) {
                            if (value == "") {
                              return 'Please enter your phone number';
                            }
                            // Regular expression for phone number validation
                            final phoneRegex = RegExp(r'^\d{10}$');
                            if (!phoneRegex.hasMatch(value!)) {
                              return 'Please enter a valid 10-digit phone number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_android_rounded,
                              color: navyBlue,
                            ),
                            labelText: "Phone",
                            labelStyle: TextStyle(color: navyBlue),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue, // Border color when focused
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          controller: passwordController,
                          obscureText: _obsecureText,
                          validator: (value) {
                            if (value == "" || value!.length < 8) {
                              return "Password must be greater or equal to 8 characters!";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: navyBlue,
                            )),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue, // Border color when focused
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: TextFormField(
                          cursorColor: navyBlue,
                          controller: cPasswordController,
                          obscureText: _obsecureText,
                          validator: (value) {
                            if (value != passwordController.text) {
                              return "Password did not match";
                            }
                            if (value == "") {
                              return "Password must be greater or equal to 8 characters!";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
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
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(color: navyBlue),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: navyBlue,
                            )),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: navyBlue, // Border color when focused
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: !isCreated
                          ? smallButton(
                              btnName: "Create an account",
                            )
                          : CircularProgressIndicator(
                              color: navyBlue,
                            ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have a account? "),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: navyBlue, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
