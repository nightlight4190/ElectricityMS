import 'package:flutter/material.dart';
import 'package:intern_project/admin/view/settings/administration.dart';
import 'package:intern_project/admin/view/settings/help_center.dart';
import 'package:intern_project/admin/view/settings/log_out.dart';
import 'package:intern_project/admin/view/settings/notification.dart';
import 'package:intern_project/admin/view/settings/settings.dart';

import '../../../util/colors.dart';

class AdminSettings extends StatefulWidget {
  @override
  _AdminSettingsState createState() => _AdminSettingsState();
}

class _AdminSettingsState extends State<AdminSettings> {
  int _currentPage = 3;

  void _changePage(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Navigation bar widget with callback functions
              NavigationBar(onChanged: _changePage),
              // Display the corresponding page content based on the current page index
              Expanded(
                child: _getPageContent(_currentPage),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.82,
            color: blueMint,
            child: _getPageContent(_currentPage),
          ),
        ],
      ),
    );
  }

  Widget _getPageContent(int page) {
    switch (page) {
      case 0:
        return Administrator();
      case 1:
        return Notifications();
      case 2:
        return HelpCenter();
      case 3:
        return Settings();
      case 4:
        return LogOut();
      default:
        return Center(child: _getPageContent(_currentPage));
    }
  }
}

class NavigationBar extends StatelessWidget {
  final ValueChanged<int> onChanged;

  const NavigationBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.18,
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
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
                    _menuItem(
                        Icons.business_center_outlined, 'Administration', 0),
                    SizedBox(height: 20),
                    _menuItem(Icons.notifications_outlined, 'Notifications', 1),
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
                    _menuItem(Icons.help_outline, 'Help', 2),
                    SizedBox(height: 20),
                    _menuItem(Icons.settings_outlined, 'Settings', 3),
                    SizedBox(height: 20),
                    _menuItem(Icons.logout_rounded, 'Logout', 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItem(IconData icon, String text, int page) {
    return InkWell(
      onTap: () {
        onChanged(page);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
