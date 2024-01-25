import 'dart:convert';
import 'package:peniremit/features/auth/domain/entities/auth_response.dart';

class AuthResponseModel extends AuthResponse {
  const AuthResponseModel({
    required super.token,
  });

  factory AuthResponseModel.fromMap(Map<String, dynamic> data) {
    return AuthResponseModel(
      token: data['token'],
    );
  }

  factory AuthResponseModel.fromJson(String source) {
    final data = json.decode(source);
    return AuthResponseModel(
      token: data['data'],
    );
  }

  String get toJson {
    final data = {
      'token': token,
    };
    return json.encode(data);
  }
}
