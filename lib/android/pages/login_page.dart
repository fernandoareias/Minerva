import 'package:flutter/material.dart';
import 'package:minerva/android/pages/location_page.dart';
import 'package:minerva/android/widgets/login_page/button_widget.dart';
import 'package:minerva/android/widgets/login_page/input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _checkbox = false;

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
                bottom: 5.0,
                obscureText: true,
                label: "Password",
                icon: Icons.lock,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: _checkbox,
                        onChanged: (bool? value) {
                          setState(() {
                            _checkbox = value!;
                          });
                        },
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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

              GestureDetector(
                onTap: () {
                  // => RegPage()
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create your ",
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
