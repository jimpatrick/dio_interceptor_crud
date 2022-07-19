import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:dio_interceptor_crud/services/endpoints.dart';
import 'package:dio_interceptor_crud/models/user/user_model.dart';

part 'api_network.g.dart';

const String _baseUrl = "http://10.0.0.2:8000/api/";

@RestApi(baseUrl: _baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(EndPoints.users)
  Future<List<UsersModel>> getUsers();

  @POST(EndPoints.login)
  @FormUrlEncoded()
  Future<String> loginUser(@Field("email") userEmail,
      @Field("password") userPassword);
}