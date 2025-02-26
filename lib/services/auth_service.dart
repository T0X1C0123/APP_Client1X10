import '../models/user_model.dart';

class AuthService {
  Future<bool> login(User user) async {
    await Future.delayed(Duration(seconds: 1));
    return user.email == "puma@DCTI.pum" && user.password == "dcti123";
  }
}
