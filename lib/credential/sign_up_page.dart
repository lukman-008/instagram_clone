import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/credential/sign_in_page.dart';
import 'package:instagram_clone/widgets/button_container.dart';

import 'package:instagram_clone/widgets/signinfomwidget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
          padding: const EdgeInsets.only(top: 160, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset("assets/insta.svg")),
              sizeVer(15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset("assets/pp.png"),
                    ),
                    Positioned(
                      right: -10,
                      bottom: -15,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizeVer(15),
              formcontainer(
                hintText: "Username",
              ),
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
              formcontainer(
                hintText: "Bio",
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: "Sign Up",
                onTapListener: () {},
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
                    "Already have an account?  ",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PageConsts.SignInPage);
                    },
                    child: Text(
                      "Sign In",
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
