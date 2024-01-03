import 'package:intl/intl.dart';

String amountCurrentSymbol() {
  return '₦';
}

String formatReturnDecimal(String amount) {
  final number = double.parse(amount);
  return (number % 1).toStringAsFixed(2).substring(1);
}

String addDollarToAmount(String price) {
  return NumberFormat.currency(
    locale: 'en_us',
    decimalDigits: 0,
    symbol: '\$',
  ).format(double.parse(price));
}

String addNairaWithDecimalToAmount(String price) {
  return NumberFormat.currency(locale: 'en_NG', decimalDigits: 2, symbol: '₦')
      .format(double.parse(price));
}

String formatAmountThousand(String price) {
  return NumberFormat.decimalPatternDigits(
    locale: 'en_NG',
    decimalDigits: 0,
  ).format(double.parse(price));
}

String normalizeAmount(String amount) {
  final num = NumberFormat.currency(decimalDigits: 0);
  return num.parse(amount).toInt().toString();
}
