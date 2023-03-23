import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';

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
            child: Icon(
              Icons.menu,
              color: primaryColor,
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
}
