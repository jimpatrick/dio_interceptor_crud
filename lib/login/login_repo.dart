import 'package:dio_interceptor_crud/services/api_network.dart';
import 'package:dio/dio.dart';
import 'package:dio_interceptor_crud/models/user/user_model.dart';

class UsersRepository {
  final ApiClient _apiClient =
      ApiClient(Dio(BaseOptions(contentType: "application/json")));

  Future<List<UsersModel>> fetchAllUsers() => _apiClient.getUsers();

  Future<String> login(String inputEmail, String inputPassword) =>
      _apiClient.loginUser(inputEmail, inputPassword);
}
