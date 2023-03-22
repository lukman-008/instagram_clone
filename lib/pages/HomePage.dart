import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: SvgPicture.asset(
            "assets/insta.svg",
            height: 50,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(CommunityMaterialIcons.facebook_messenger),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/mypic.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      sizeHor(10),
                      Text(
                        "prabhash_ranjan.official",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert_outlined),
                ],
              ),
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/post.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            sizeVer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      Icon(
                        Feather.message_circle,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      Icon(
                        Feather.send,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: primaryColor,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
