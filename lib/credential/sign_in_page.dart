import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/credential/sign_up_page.dart';
import 'package:instagram_clone/mainScreen/main_screen.dart';
import 'package:instagram_clone/widgets/button_container.dart';

import 'package:instagram_clone/widgets/signinfomwidget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
          padding: const EdgeInsets.only(top: 200, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset("assets/insta.svg")),
              sizeVer(15),
              formcontainer(
                hintText: "Email",
              ),
              sizeVer(15),
              formcontainer(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: "Sign In",
                onTapListener: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?  ",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
