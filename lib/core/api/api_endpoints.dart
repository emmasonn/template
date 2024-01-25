
import 'package:peniremit/core/api/api_base.dart';

class ApiEndPoints {
  //! Auth endpoints
  static final initializeUser = '${ApiBase.baseUrl}/user/initialize';
  static final isUserLoggedIn = '${ApiBase.baseUrl}/auth/is-user-logged-in';
  static final emailAuthenticate = '${ApiBase.baseUrl}/auth/initialize/email';
  static final isUserExist = '${ApiBase.baseUrl}/initialize/is-user';
  static final isLoggedIn = '${ApiBase.baseUrl}/initialize/is-logged-in';
  static final logOut = '${ApiBase.baseUrl}/session/logout';
  static final otpVerify = '${ApiBase.baseUrl}/auth/user/email';
  static final updateEmail = '${ApiBase.baseUrl}/auth/user/update-email';
  static final bankCreate = '${ApiBase.baseUrl}/bank-accounts/create';
  static final bankList = '${ApiBase.baseUrl}/bank-accounts/list';

  static String updateBank(String id) =>
      '${ApiBase.baseUrl}/bank-accounts/update/$id';

  static String bankDelete(String id) =>
      '${ApiBase.baseUrl}/bank-accounts/delete/$id';

}
