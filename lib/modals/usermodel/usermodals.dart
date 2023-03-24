import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/domain/entities/userentities.dart';

class UserModel extends UserEntity {
  final String? uid;
  final String? username;
  final String? name;
  final String? bio;
  final String? website;
  final String? email;
  final String? profileUrl;
  final List? followers;
  final List? following;
  final num? totalFollowers;
  final num? totalFollowing;
  final num? totalPosts;

  UserModel({
    this.uid,
    this.username,
    this.name,
    this.bio,
    this.website,
    this.email,
    this.profileUrl,
    this.followers,
    this.following,
    this.totalFollowers,
    this.totalFollowing,
    this.totalPosts,
  }) : super(
          uid: uid,
          totalFollowing: totalFollowing,
          name: name,
          bio: bio,
          website: website,
          email: email,
          profileUrl: profileUrl,
          followers: followers,
          following: following,
          totalFollowers: totalFollowers,
          username: username,
          totalPosts: totalPosts,
        );
  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
        email: snapshot['email'],
        uid: snapshot['uid'],
        totalFollowing: snapshot['totalFollowing'],
        name: snapshot['name'],
        bio: snapshot['bio'],
        website: snapshot['website'],
        followers: List.from(snap.get('followers')),
        profileUrl: snapshot['profileUrl'],
        following: List.from(snap.get('following')),
        totalFollowers: snapshot['totalFollowers'],
        username: snapshot['username'],
        totalPosts: snapshot['totalPosts']);
  }
  Map<String, dynamic> toJson() => {
        "uid": uid,
        "email": email,
        "totalFollowing": totalFollowing,
        "name": name,
        "bio": bio,
        "website": website,
        "followers": followers,
        "profileUrl": profileUrl,
        "following": following,
        "totalFollowers": totalFollowers,
        "username": username,
        "totalPosts": totalPosts,
      };
}
