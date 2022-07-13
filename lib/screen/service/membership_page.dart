import 'package:dio/dio.dart';

import '../model/membership_model.dart';

class Membership {
  final _dio = Dio();
  String baseUrl = 'https://gym-dd-wgziwjr3rq-uc.a.run.app/member/';

  Future<Response> membership({required MembershipModel data}) async {
    Response response;
    response = await _dio.post(baseUrl + '/join', data: data.toJson());
    return response;
  }
}
