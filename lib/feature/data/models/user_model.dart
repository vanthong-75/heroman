import 'package:heroman_app/feature/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    super.id,
    required super.username,
    required super.password,
    required super.role,
  });
  factory UserModel.fromEntity(User user) {
    return UserModel(
      username: user.username,
      password: user.password,
      role: user.role,
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      username: json["username"],
      password: json["password"],
      role: json["role"],
    );
  }
  Map<String, dynamic> toJson(){
    return {
      "username":username, "password":password
    };
  }
}
