import 'package:flutter/material.dart';
import 'package:intern_project/view/screens/signIn/login.dart';
import 'package:intern_project/view/util/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            color: babyBlue,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      right: 120,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: blueGrotto,
                          ),
                        ),
                        Text(
                          "Electricity\n" "Management System",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Fully scalable with regard to the connected\n"
                          "devices and to the software's function to\n"
                          "meet current and future needs.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset('assets/image/working.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            color: blueMint,
            child: LoginPage(),
          ),
        ],
      ),
    );
  }
}
