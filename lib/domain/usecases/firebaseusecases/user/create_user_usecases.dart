import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class CreateUserUsecase {
  final FirebaseRepository repository;
  CreateUserUsecase({required this.repository});
  Future<void> call(UserEntity user) {
    return repository.createuser(user);
  }
}
