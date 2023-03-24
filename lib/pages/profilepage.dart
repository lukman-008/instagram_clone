import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/pages/EditProfilePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("P&L Tech"),
        backgroundColor: backGroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                _openModelSheet(context);
              },
              child: Icon(
                Icons.menu,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/post.jpg'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Row(
                    children: [
                      sizeHor(10),
                      Column(
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          sizeVer(8),
                          Text(
                            "Posts",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      sizeHor(19),
                      Column(
                        children: [
                          Text(
                            "10M",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          sizeVer(8),
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      sizeHor(19),
                      Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          sizeVer(8),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              sizeVer(10),
              Text(
                "P&L Tech",
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              Text(
                "Flutter Developers \nP&L Group of Companies",
                style: TextStyle(color: primaryColor),
              ),
              sizeVer(10),
              GridView.builder(
                  itemCount: 5,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: secondaryColor,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, PageConsts.edpp);
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: primaryColor),
                      ),
                    ),
                  ),
                  sizeVer(7),
                  Divider(
                    thickness: 1,
                    color: secondaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: primaryColor),
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
