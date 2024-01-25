//drawer items
enum ScreenTypes {
  none,
  home,
  wallet,
  analytics,
  settings,
}

//api environment
enum Environment {
  production,
  staging,
}

//payment confirmation
enum ConfirmationMethod {
  none,
  pin,
  biometric,
}

//bill type
enum BillType {
  none,
  airtime,
  data,
  electricity,
  tv,
}

//Meter type
enum MeterType {
  prepaid,
  postpaid,
}

//Transaction status
enum TransactionStatus {
  successful,
  failed,
  pending,
  refunded,
}
