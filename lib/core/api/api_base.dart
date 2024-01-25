import 'package:peniremit/core/utils/enum_constants.dart';

class ApiBase {
  static String? baseUrl;
  static String? apiKey;

  //specifiy Environment PRODUCTION | STAGING
  static const env = Environment.staging;
  //specifiy Api version
  static const apiVersion = 'OREO';
  //specifiy Api version number
  static const appVersion = '1.0.0';

  //initialize api
  static void initApi() {
    switch (env) {

      //!Production
      case Environment.production:
        baseUrl = '';
        apiKey = '';

      //!Staging
      case Environment.staging:
        baseUrl = '';
        apiKey = '';
    }
  }
}
