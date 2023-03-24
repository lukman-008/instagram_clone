import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class SignInUserUsecase {
  final FirebaseRepository repository;
  SignInUserUsecase({required this.repository});
  Future<void> call(UserEntity userEntity) {
    return repository.signInUser(userEntity);
  }
}
