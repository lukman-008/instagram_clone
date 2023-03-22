import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:instagram_clone/features/presentation/widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
        children: [Flexible(
          flex: 2,
          child: Container(
          
        )),
            // ignore: deprecated_member_use
            Center(child: SvgPicture.asset("assets/ic_instagram.svg",color: Colors.white,))
        ,sizeVer(30),
        const FormContainerWidget(
           hintText: "Email",
        ),
        sizeVer(15),
        const FormContainerWidget(
          hintText: "Password",
          isPasswordField: true,
        ),
        sizeVer(15),
        ButtonContainerWidget(
          text: "Sign in",
          color: blueColor,
          onTapListener: (){},
        ),
        Flexible(
          flex: 2,
          child: Container(
          
        )),
        const Divider(color: secondaryColor,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Don't have an account? ",style: TextStyle(color: primaryColor),
            ),
            InkWell(
              child: Text("Sign up.",style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor),),
            )
          ],
        )
        ],
        ),
      ),
    );
  }
}
