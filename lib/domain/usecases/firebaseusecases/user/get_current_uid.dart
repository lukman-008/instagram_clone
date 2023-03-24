import 'package:instagram_clone/domain/repositories/firebse_repository.dart';

class GetCurrentUidUseCases {
  final FirebaseRepository repository;
  GetCurrentUidUseCases({required this.repository});
  Future<String> call() {
    return repository.getCurrentUid();
  }
}
