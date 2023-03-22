import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/widgets/signinfomwidget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/insta.svg"),
              ],
            ),
            sizeVer(30),
            formcontainer(
              hintText: "Email",
            ),
            sizeVer(30),
            formcontainer(
              hintText: "Password",
              isPasswordField: true,
            )
          ],
        ),
      ),
    );
  }
}
