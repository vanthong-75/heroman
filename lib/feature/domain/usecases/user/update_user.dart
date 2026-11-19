import 'package:heroman_app/feature/domain/entities/user.dart';
import 'package:heroman_app/feature/domain/repositories/user_repository.dart';

class UpdateUser {
  final UserRepository repository;
  UpdateUser(
    this.repository
  );
  Future <User> call(User user){
    return repository.updateUser(user);
  }
}