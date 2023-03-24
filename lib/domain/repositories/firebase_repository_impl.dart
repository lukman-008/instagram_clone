import 'package:instagram_clone/datasource/remotedatasource.dart';
import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  FirebaseRemoteDataSource remoteDataSource;

  FirebaseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> createuser(UserEntity user) async =>
      remoteDataSource.createuser(user);
  @override
  Future<String> getCurrentUid() async => remoteDataSource.getCurrentUid();

  @override
  Stream<List<UserEntity>> getSingleUser(String uid) =>
      remoteDataSource.getSingleUser(uid);

  @override
  Stream<List<UserEntity>> getUsers(UserEntity user) =>
      remoteDataSource.getUsers(user);

  @override
  Future<bool> isSignIn() async => remoteDataSource.isSignIn();

  @override
  Future<void> signInUser(UserEntity user) async =>
      remoteDataSource.signInUser(user);

  @override
  Future<void> signOut() async => remoteDataSource.signOut();

  @override
  Future<void> signUpUser(UserEntity user) async =>
      remoteDataSource.signUpUser(user);

  @override
  Future<void> updateuser(UserEntity user) async =>
      remoteDataSource.updateuser(user);
}
