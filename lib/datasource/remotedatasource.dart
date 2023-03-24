import 'package:instagram_clone/domain/entities/userentities.dart';

abstract class FirebaseRemoteDataSource {
  //credentials
  Future<void> signInUser(UserEntity user);
  Future<void> signUpUser(UserEntity user);
  Future<bool> isSignIn();
  Future<void> signOut();

  //user
  Stream<List<UserEntity>> getUsers(UserEntity user);
  Stream<List<UserEntity>> getSingleUser(String uid);
  Future<String> getCurrentUid();
  Future<void> createuser(UserEntity user);
  Future<void> updateuser(UserEntity user);
}
