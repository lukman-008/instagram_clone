import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/credential/sign_in_page.dart';
import 'package:instagram_clone/credential/sign_up_page.dart';
import 'package:instagram_clone/mainScreen/main_screen.dart';
import 'package:instagram_clone/pages/EditProfilePage.dart';
import 'package:instagram_clone/pages/comment_page.dart';
import 'package:instagram_clone/pages/widget/UpdatePostPage.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PageConsts.edpp:
        {
          return routeBuilder(EditProfilePage());
        }
      case PageConsts.UpdatePostPage:
        {
          return routeBuilder(UpdatePostPage());
        }

      case PageConsts.commentPage:
        {
          return routeBuilder(CommentPage());
        }

      case PageConsts.SignInPage:
        {
          return routeBuilder(SignInPage());
        }

      case PageConsts.SignUpPage:
        {
          return routeBuilder(SignUpPage());
        }

      case PageConsts.MainScreen:
        {
          return routeBuilder(MainScreen());
        }

      default:
        {
          NoPageFound();
        }
    }
  }
}

dynamic routeBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class NoPageFound extends StatelessWidget {
  const NoPageFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Not Found"),
      ),
      body: Center(
        child: Text("Page Not Found"),
      ),
    );
  }
}
