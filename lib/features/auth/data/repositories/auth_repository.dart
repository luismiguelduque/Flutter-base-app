
import 'package:base_app/common/models/user.dart';
import 'package:base_app/features/auth/data/sources/auth_source.dart';

class AuthRepository {

  final AuthSource authSource;

  AuthRepository(this.authSource);

  Future<User> signUserIn({
    required String email,
    required String password
  }) async {
    try{
      final response = await authSource.signUserIn(email: email, password: password);
      return User(name: "");
    }catch(e){
      rethrow;
    }
  }

}
