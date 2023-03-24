import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class GetUsersUsecase {
  final FirebaseRepository repository;
  GetUsersUsecase({required this.repository});
  Stream<List<UserEntity>> call(UserEntity userEntity) {
    return repository.getUsers(userEntity);
  }
}
