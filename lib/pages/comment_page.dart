import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/widgets/signinfomwidget.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  bool _isUserReplying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        title: Text("Comments"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: secondaryColor, shape: BoxShape.circle),
                    ),
                    sizeHor(10),
                    Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    sizeVer(10),
                  ],
                ),
                sizeVer(10),
                Text("this is beautiful"),
              ],
            ),
          ),
          sizeVer(10),
          Divider(
            color: secondaryColor,
          ),
          sizeVer(10),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: secondaryColor, shape: BoxShape.circle),
                  ),
                  sizeHor(10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.favorite_border_outlined)
                            ],
                          ),
                          sizeVer(4),
                          Text(
                            "THIS IS COMMENT",
                            style: TextStyle(color: primaryColor),
                          ),
                          sizeVer(4),
                          Row(
                            children: [
                              Text(
                                "08/07/2023",
                                style: TextStyle(
                                    color: darkGreyColor, fontSize: 12),
                              ),
                              sizeHor(15),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isUserReplying = !_isUserReplying;
                                  });
                                },
                                child: Text(
                                  "reply",
                                  style: TextStyle(
                                      color: darkGreyColor, fontSize: 12),
                                ),
                              ),
                              sizeHor(15),
                              Text(
                                "veiw reply",
                                style: TextStyle(
                                    color: darkGreyColor, fontSize: 12),
                              ),
                            ],
                          ),
                          _isUserReplying == true ? sizeVer(10) : sizeVer(0),
                          _isUserReplying == true
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    formcontainer(
                                      hintText: "Post your reply....",
                                    ),
                                    sizeVer(10),
                                    Text(
                                      "Post",
                                      style: TextStyle(color: blueColor),
                                    ),
                                  ],
                                )
                              : Container(
                                  width: 0,
                                  height: 0,
                                )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          _commentSection(),
        ],
      ),
    );
  }

  _commentSection() {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            sizeHor(10),
            Expanded(
                child: TextFormField(
              style: TextStyle(color: primaryColor),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Post your comment...",
                  hintStyle: TextStyle(color: secondaryColor)),
            )),
            GestureDetector(
                onTap: () {},
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 15, color: blueColor),
                ))
          ],
        ),
      ),
    );
  }
}
