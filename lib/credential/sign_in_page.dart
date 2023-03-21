import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Center(child: new SvgPicture.asset("assets/ic_instagram.svg",color: Colors.white,))
      ],
      ),
    );
  }
}
