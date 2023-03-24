import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class SignUpUsecase {
  final FirebaseRepository repository;
  SignUpUsecase({required this.repository});
  Future<void> call(UserEntity userEntity) {
    return repository.signUpUser(userEntity);
  }
}
