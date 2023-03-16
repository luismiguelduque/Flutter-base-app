import 'package:base_app/network/network_client.dart';
import 'package:dio/dio.dart';

class AuthSource {

  final NetworkClient networkClient;

  AuthSource(this.networkClient);

  Future<Response> signUserIn({
    required String email,
    required String password
  }) async {
    try{
      return await networkClient.post(url: "");
    }catch(e){
      rethrow;
    }
  }

}