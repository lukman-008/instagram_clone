import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class GetSingleUserUsecase {
  final FirebaseRepository repository;
  GetSingleUserUsecase({required this.repository});
  Stream<List<UserEntity>> call(String uid) {
    return repository.getSingleUser(uid);
  }
}
