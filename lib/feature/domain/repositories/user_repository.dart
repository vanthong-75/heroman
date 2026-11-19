import 'package:heroman_app/feature/domain/entities/user.dart';

abstract class UserRepository {
  Future <User> updateUser(User user);
}