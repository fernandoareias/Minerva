import 'package:flutter/material.dart';
import 'package:minerva/android/pages/location_page.dart';
import 'package:minerva/android/widgets/login_page/button_widget.dart';
import 'package:minerva/android/widgets/login_page/input_widget.dart';

const users = const {'test@test.com': 'test', 'test2@test.com': 'test123'};

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // Simuled delay connection with BD
  Duration get login_duration => Duration(milliseconds: 2000);
  TextStyle get style => TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFA2E7B6),
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/login_page/background.png"),
            ),
          ),
          // Logo Project
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: 60,
              ),
              child: Container(
                width: 90,
                height: 90,
                child: Image(image: AssetImage("assets/login_page/logo.png")),
              ),
            ),
          ),

          // Login Form
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 180,
                ),
              ),
              // Input user email
              inputWidget(
                bottom: 20.0,
                label: "Email ID",
                icon: Icons.email,
              ),

              // Input user password
              inputWidget(
                bottom: 20.0,
                obscureText: true,
                label: "Password",
                icon: Icons.lock,
              ),

              // Button
              button(
                context: context,
                page: LocationPage(),
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                ),
                label: "Login",
              ),
            ],
          ),

          // Image Footer
        ],
      ),
    );
  }
}
