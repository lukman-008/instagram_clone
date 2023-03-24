import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/pages/comment_page.dart';
import 'package:instagram_clone/pages/widget/UpdatePostPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool n = false;
  late bool m = false;
  late bool o = false;
  late bool p = false;
  late int a = 500;
  late int b = 500;

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
        body: SingleChildScrollView(
          child: Column(
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
                          // ignore: prefer_interpolation_to_compose_strings
                          "prabhash_ranjan.official",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          _openModelSheet(context);
                        },
                        child: Icon(Icons.more_vert_outlined)),
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
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                n = !n;
                                n == true ? a = a + 1 : a = a - 1;
                              });
                            },
                            icon: Icon(
                              n == true
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: primaryColor,
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, PageConsts.commentPage);
                          },
                          child: Icon(
                            Feather.message_circle,
                            color: primaryColor,
                          ),
                        ),
                        sizeHor(10),
                        Icon(
                          Feather.send,
                          color: primaryColor,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            o = !o;
                          });
                        },
                        icon: Icon(
                          o == true
                              ? Icons.bookmark
                              : Icons.bookmark_border_outlined,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "$a likes",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text("prabhash_ranjan.official",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold)),
                    sizeHor(10),
                    Text(
                      "The Developers",
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "View all 100 comments",
                  style: TextStyle(color: Color.fromARGB(151, 255, 255, 255)),
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "22/03/2023",
                  style: TextStyle(color: Color.fromARGB(151, 255, 255, 255)),
                ),
              ),
              //next post
              sizeVer(20),
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
                              image: AssetImage('assets/luk.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        sizeHor(10),
                        Text(
                          "the_lukman",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {}, child: Icon(Icons.more_vert_outlined)),
                  ],
                ),
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/group.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
              sizeVer(10),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                m = !m;
                                m == true ? b = b + 1 : b = b - 1;
                              });
                            },
                            icon: Icon(
                              m == true
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: primaryColor,
                            )),
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
                    IconButton(
                      onPressed: () {
                        setState(() {
                          p = !p;
                        });
                      },
                      icon: Icon(
                        p == true
                            ? (Icons.bookmark)
                            : Icons.bookmark_border_outlined,
                      ),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "$b likes",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text("the_lukman",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold)),
                    sizeHor(10),
                    Text(
                      "Gang Up",
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "View all 100 comments",
                  style: TextStyle(color: Color.fromARGB(151, 255, 255, 255)),
                ),
              ),
              sizeVer(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "22/03/2023",
                  style: TextStyle(color: Color.fromARGB(151, 255, 255, 255)),
                ),
              ),
            ],
          ),
        ));
  }

  _openModelSheet(BuildContext context) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(color: backGroundColor.withOpacity(0.8)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'MoreOptions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: primaryColor),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1,
                    color: secondaryColor,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Delete  Post",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: primaryColor),
                    ),
                  ),
                  sizeVer(7),
                  Divider(
                    thickness: 1,
                    color: secondaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, PageConsts.UpdatePostPage);
                      },
                      child: Text(
                        "Update Post",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: primaryColor),
                      ),
                    ),
                  ),
                  sizeVer(7)
                ],
              ),
            ),
          );
        });
  }
}
