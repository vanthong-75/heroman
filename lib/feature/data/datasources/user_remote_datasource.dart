import 'package:dio/dio.dart';
import 'package:heroman_app/core/network/dio_client.dart';
import 'package:heroman_app/feature/data/models/user_model.dart';

class UserRemoteDatasource {
  Future<UserModel> updateUser(UserModel user) async {
    try {
      final response = await DioClient.dio.patch("/user/${user.id}", data: user.toJson());
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      print(e);
      throw Exception(e);
      
    }
  }
}
