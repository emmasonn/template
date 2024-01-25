import 'dart:io';
import 'package:peniremit/core/api/api_base.dart';
import 'package:peniremit/core/cache_manager/cache_manager.dart';
import 'package:peniremit/core/helpers/helpers_utils.dart';
import 'package:peniremit/features/auth/data/model/auth_model.dart';
import 'package:peniremit/features/auth/domain/entities/auth_response.dart';
import 'package:peniremit/resources/app_strings.dart';

class ApiHeader {
  static Future<Map<String, String>> getHeaders({
    bool isJsonRequest = false,
    bool tokenized = true,
  }) async {
    if (isJsonRequest) {
      return {
        'Content-type': 'application/json',
        HttpHeaders.authorizationHeader:
            'Bearer ${(await getAuthModel()).token}'
      };
    } else {
      final httpHeader = {
        'Accept': 'application/json',
        'api_key': ApiBase.apiKey!,
      };
      if (!tokenized) {
        return httpHeader;
      } else {
        httpHeader.addAll({
          // HttpHeaders.authorizationHeader:
          //     'Bearer ${(await getAuthModel()).token}',
          'token': (await getAuthModel()).token,
        });
        pp('header:$httpHeader');
        return httpHeader;
      }
    }
  }

  static Future<AuthResponse> getAuthModel() async {
    return AuthResponseModel.fromJson(
      (await CacheManager.instance.getPref(AppStrings.authPrefKeyTxt)),
    );
  }
}
