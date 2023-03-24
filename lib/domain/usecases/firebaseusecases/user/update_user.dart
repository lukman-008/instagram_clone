import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class UpdateUserUsecase {
  final FirebaseRepository repository;
  UpdateUserUsecase({required this.repository});
  Future<void> call(UserEntity userEntity) {
    return repository.updateuser(userEntity);
  }
}
