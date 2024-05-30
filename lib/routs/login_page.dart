import 'dart:ui';

import 'package:expense_tracker/utils/utilities_file.dart';
import 'package:expense_tracker/widgets/login_text_field.dart';
import 'package:expense_tracker/widgets/square_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  void loginUser() {}

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final tryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, bottom: 10, top: 60, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Image.asset(
                  "assets/smile.png",
                ),
              ),
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),

              // this container is for input field
              Container(
                margin: const EdgeInsets.only(top: 35, bottom: 45),
                height: size.height / 4.5,
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // this is email textfiled
                      LoginTextField(
                        controller: userNameController,
                        hintText: "Email",
                      ),
                      //  this is password textfield
                      LoginTextField(
                        controller: passwordController,
                        hintText: "Password",
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // this SizedBox is for login button
              SizedBox(
                height: 65,
                width: size.width,
                child: ElevatedButton(
                  onPressed: () => loginUser(),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: FrequentColors.buttonColor),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // this is for the divider
              const Row(
                children: <Widget>[
                  Expanded(child: Divider()),
                  Text(
                    "  or  ",
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // this for the singin with differnt api

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () => {},
                      child: const SquareTile(
                          imagePath: "assets/facebookLogo.svg")),
                  GestureDetector(
                      onTap: () => {},
                      child:
                          const SquareTile(imagePath: "assets/googleLogo.svg")),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: const Text(
                      "Sign up",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
