import 'package:heroman_app/feature/data/datasources/user_remote_datasource.dart';
import 'package:heroman_app/feature/data/models/user_model.dart';
import 'package:heroman_app/feature/domain/entities/user.dart';
import 'package:heroman_app/feature/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  final UserRemoteDatasource remote;
  UserRepositoryImpl(
    this.remote
  );
  @override
  Future <User> updateUser (User user){
    final model = UserModel.fromEntity(user);
    return remote.updateUser(model);
  }
}