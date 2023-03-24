import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/widgets/profileformwidget.dart';

class UpdatePostPage extends StatelessWidget {
  const UpdatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text("Edit Post"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.done,
              color: blueColor,
              size: 28,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/mypic.png")),
                shape: BoxShape.circle,
              ),
            ),
            sizeVer(10),
            Text(
              "prabhash_ranjan.official",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/post.jpg")),
              ),
            ),
            sizeVer(10),
            ProfileFormWidget(
              title: "Description",
            )
          ]),
        ),
      ),
    );
  }
}
