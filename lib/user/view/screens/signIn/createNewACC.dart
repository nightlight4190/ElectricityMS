import 'package:flutter/material.dart';
import 'package:intern_project/user/view/screens/signIn/register.dart';
import 'package:intern_project/user/view/util/colors.dart';

class CreateNewAccPage extends StatefulWidget {
  const CreateNewAccPage({super.key});

  @override
  State<CreateNewAccPage> createState() => _CreateNewAccPageState();
}

class _CreateNewAccPageState extends State<CreateNewAccPage> {
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
                          "Expandable from the basic monitoring\n"
                          "application to a fully customized enterprise\n"
                          "management system",
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
                      child: Image.asset('assets/image/employee.png'),
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
            child: RegisterPage(),
          ),
        ],
      ),
    );
  }
}
