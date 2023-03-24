import 'package:instagram_clone/domain/entities/userentities.dart';
import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class SignOutUsecase {
  final FirebaseRepository repository;
  SignOutUsecase({required this.repository});
  Future<void> call() {
    return repository.signOut();
  }
}
