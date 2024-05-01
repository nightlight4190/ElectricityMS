import 'package:flutter/material.dart';
import 'package:intern_project/user/view/screens/dashboard/dashBoard.dart';
import 'package:intern_project/user/view/screens/signIn/createNewACC.dart';
import 'package:intern_project/user/view/screens/signIn/profile.dart';
import 'package:intern_project/util/colors.dart';
import 'package:intern_project/util/language.dart';
import 'package:intern_project/user/view/widgets/smallButton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String selectedLanguage = 'English';
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: navyBlue,
      fontSize: 11,
      fontWeight: FontWeight.w600,
    );
    var textStyle2 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 60, top: 30),
        child: Column(
          children: [
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.09,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: navyBlue,
                      ),
                      child: Center(
                        child: Text(
                          'EM',
                          style: TextStyle(
                            color: blueMint,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'System',
                          style: TextStyle(
                            color: navyBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'MEASURE, ANALYZE',
                          style: textStyle,
                        ),
                        Text(
                          'IMPROVE & CONTROL',
                          style: textStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Select Language',
                                  // style: textStyle2,
                                ),
                                content: SizedBox(
                                  width: double.minPositive,
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      for (var language in languages)
                                        ListTile(
                                          title: Text(language),
                                          onTap: () {
                                            setState(() {
                                              selectedLanguage = language;
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text(
                              selectedLanguage,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ), // Show selected language
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: textStyle2,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateNewAccPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 2,
                            color: navyBlue,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: textStyle2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 140,
                      top: 100,
                      bottom: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Electricity',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          'Management System',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            Text(
                              "EMS is a complete energy infomation management\n"
                              "solution for your business allowing you to process,\n"
                              "analyze, store and share energy usage and power\n"
                              "quality data across your whole enterprise.",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DashBoardPage(),
                                  ),
                                );
                              },
                              child: smallButton(
                                btnName: 'GET STARTED',
                                width: 120,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text('How it work'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Icon(Icons.play_circle),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 45),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      // height: MediaQuery.of(context).size.height * .55,
                      // width: MediaQuery.of(context).size.width * .50,
                      height: 450,
                      width: 750,
                      child: Image.asset(
                        'assets/image/dashboard.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }
}
