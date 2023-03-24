import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/datasource/remotedatasource.dart';
import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/modals/usermodel/usermodals.dart';

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;

  FirebaseRemoteDataSourceImpl(this.firebaseFirestore, this.firebaseAuth);

  @override
  Future<void> createuser(UserEntity user) async {
    final userCollection = firebaseFirestore.collection(FirebaseConsts.users);

    final uid = await getCurrentUid();

    userCollection.doc(uid).get().then((userDoc) {
      final newUser = UserModel(
        uid: uid,
        name: user.name,
        email: user.email,
        bio: user.bio,
        following: user.following,
        website: user.website,
        profileUrl: user.profileUrl,
        username: user.username,
        totalFollowers: user.totalFollowers,
        followers: user.followers,
        totalFollowing: user.totalFollowing,
        totalPosts: user.totalPosts,
      ).toJson();

      if (!userDoc.exists) {
        userCollection.doc(uid).set(newUser);
      } else {
        userCollection.doc(uid).update(newUser);
      }
    }).catchError((error) {
      toast("Some error occured");
    });
  }

  @override
  Future<String> getCurrentUid() async => firebaseAuth.currentUser!.uid;

  @override
  Stream<List<UserEntity>> getSingleUser(String uid) {
    final userCollection = firebaseFirestore
        .collection(FirebaseConsts.users)
        .where("uid", isEqualTo: uid)
        .limit(1);
    return userCollection.snapshots().map((QuerySnapshot) =>
        QuerySnapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList());
  }

  @override
  Stream<List<UserEntity>> getUsers(UserEntity user) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignIn() async => firebaseAuth.currentUser?.uid != null;

  @override
  Future<void> signInUser(UserEntity user) async {
    try {
      if (user.email!.isNotEmpty || user.password!.isNotEmpty) {
        await firebaseAuth.signInWithEmailAndPassword(
            email: user.email!, password: user.password!);
      } else {
        toast("fields cant be empty");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        toast("user not found");
      } else if (e.code == "wrong-password") {
        toast("Invalid email or password");
      }
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<void> signUpUser(UserEntity user) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
              email: user.email!, password: user.password!)
          .then((value) async {
        if (value.user?.uid != null) {
          await createuser(user);
        }
      });
      return;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        toast("email already taken");
      } else {
        toast("something went wrong");
      }
    }
  }

  @override
  Future<void> updateuser(UserEntity user) async {
    final userCollection = firebaseFirestore.collection(FirebaseConsts.users);
    Map<String, dynamic> userInformation = Map();
    if (user.username != "" && user.username! != null)
      userInformation['username'] = user.username;

    if (user.website != "" && user.website != null)
      userInformation['website'] = user.website;

    if (user.profileUrl != "" && user.profileUrl != null)
      userInformation['profileUrl'] = user.profileUrl;

    if (user.bio != "" && user.bio != null) userInformation['bio'] = user.bio;

    if (user.totalFollowing != null)
      userInformation['totalFollowing'] = user.totalFollowing;
    if (user.totalFollowers != null)
      userInformation['totalFollowers'] = user.totalFollowers;

    if (user.totalPosts != null)
      userInformation['totalPosts'] = user.totalPosts;

    userCollection.doc(user.uid).update(userInformation);
  }
}
