import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class IsSignInUsecase {
  final FirebaseRepository repository;
  IsSignInUsecase({required this.repository});
  Future<bool> call() {
    return repository.isSignIn();
  }
}
