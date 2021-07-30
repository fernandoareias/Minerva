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
    // Pega o tamanho e largura da tela do celular
    var screenSize = MediaQuery.of(context).size;
    var _height = screenSize.height;
    var _width = screenSize.width;

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
                top: _height * .09,
              ),
              child: Container(
                width: _width * .25,
                height: _height * .12,
                child: Image(image: AssetImage("assets/login_page/logo.png")),
              ),
            ),
          ),

          // Login Form
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: _height * .25,
                ),
              ),
              // Input user email
              inputWidget(
                bottom: _height * .02,
                label: "Email ID",
                icon: Icons.email,
              ),

              // Input user password
              inputWidget(
                bottom: _height * .01,
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
                  print(_height);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: _height * .015,
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
