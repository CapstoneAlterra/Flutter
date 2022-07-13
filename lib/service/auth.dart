import 'package:dio/dio.dart';

import '../model/register_model.dart';

class Auth {
  final _dio = Dio();
  String baseUrl = 'https://gym-dd-wgziwjr3rq-uc.a.run.app/member/auth';

  Future<Response> login({
    required String email,
    required String password,
  }) async {
    Response response;
    var data = {'email': email, 'password': password};

    response = await _dio.post(baseUrl + '/login', data: data);
    return response;
  }

  // Future<Response> logOut(String token) async {
  //   Response response;
  //   response = await _dio.post(baseUrl + '/logout',
  //       options: Options(headers: {'Authorization': 'Bearer $token'}));
  //   return response;
  // }

  Future<Response> register({required RegisterModel data}) async {
    Response response;
    response = await _dio.post(baseUrl + '/register', data: data.toJson());
    return response;
  }
}
