import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

///initial formatter to find the date txt
final DateFormat _formatter = DateFormat('yyyy-MM-dd');

extension DateParsing on DateTime {
  String get getText {
    // log(this);
    final now = DateTime.now();
    if (_formatter.format(now) == _formatter.format(this)) {
      return 'Today';
    } else if (_formatter.format(DateTime(now.year, now.month, now.day - 1)) ==
        _formatter.format(this)) {
      return 'Yesterday';
    } else {
      return '${DateFormat('d').format(this)} ${DateFormat('MMMM').format(this)} ${DateFormat('y').format(this)}';
    }
  }
}

extension ContextExtension on BuildContext {
  //controls the padding
  EdgeInsetsGeometry scrollPadding() {
    final size = MediaQuery.of(this).size;
    return EdgeInsets.only(
      left: size.width * 0.03,
      right: size.width * 0.03,
      top: 5.0,
      bottom: size.width * 0.2,
    );
  }

  //retrieve the colorscheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension StringUtil on String {
  String capitalizeEachLetters() {
    final List<String> results = split(' ');
    List<String> newString = [];
    for (var item in results) {
      newString.add(item.capitalizeFirstLetter());
    }
    return newString.join(' ').trim();
  }
}
