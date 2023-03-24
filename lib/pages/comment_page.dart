import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                sizeVer(10),
              ],
            ),
            sizeVer(10),
            Text("this is beautiful"),
            sizeVer(10),
            Divider(
              color: secondaryColor,
            ),
            sizeVer(10),
            Container(
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
                              Text(
                                "reply",
                                style: TextStyle(
                                    color: darkGreyColor, fontSize: 12),
                              ),
                              sizeHor(15),
                              Text(
                                "veiw reply",
                                style: TextStyle(
                                    color: darkGreyColor, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
