import 'package:flutter/material.dart';
import 'package:intern_project/user/view/widgets/icon_with_text.dart';
import 'package:intern_project/util/colors.dart';

class AdminSettings extends StatelessWidget {
  const AdminSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.18,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/image/person.jpg'),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "EMS",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 25,
                            width: MediaQuery.of(context).size.width * 0.04,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 168, 160),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Admin',
                                style: TextStyle(color: blueMint, fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sara Menson",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "sara.menson@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Main menu",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                              ),
                            ),
                            Divider(color: Colors.black12),
                            SizedBox(height: 20),
                            IconWithText(
                              icon: Icons.business_center_outlined,
                              text: 'Administration',
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconWithText(
                                  icon: Icons.notifications_outlined,
                                  text: 'Notifications',
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 10,
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Insight",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                              ),
                            ),
                            Divider(color: Colors.black12),
                            SizedBox(height: 20),
                            IconWithText(
                              icon: Icons.help_outline,
                              text: 'Help',
                            ),
                            SizedBox(height: 20),
                            IconWithText(
                              icon: Icons.settings_outlined,
                              text: 'Settings',
                            ),
                            SizedBox(height: 20),
                            IconWithText(
                              icon: Icons.logout_rounded,
                              text: 'Logout',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.82,
            color: blueMint,
            // child: , TODO
          ),
        ],
      ),
    );
  }
}