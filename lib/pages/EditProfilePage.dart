import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/pages/widget/profile_form_widget.dart';
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text("Edit Profile"),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.close)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(Icons.done,color: blueColor,size: 32,),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(60)),
                ),
              ),
              sizeVer(15),
              Center(
                child: Text("Change profile photo",style: TextStyle(color: blueColor,fontSize: 20,fontWeight: FontWeight.w400),),
              ),
              sizeVer(15),
              ProfileFormWidget(
                title: "Name",
              ),sizeVer(15),
               ProfileFormWidget(
                title: "Username",
              ),sizeVer(15),
               ProfileFormWidget(
                title: "website",
              ),sizeVer(15),
               ProfileFormWidget(
                title: "Bio",
              )
            ],
          ),
        ),
      ),
    );
  }
}