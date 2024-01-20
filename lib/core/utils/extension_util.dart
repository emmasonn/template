import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

extension AppContext on BuildContext {
  //returns device width
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  Color get onSurfaceVt => colorScheme.onSurface.withOpacity(0.34);
  Color get surfaceVt => colorScheme.surface.withOpacity(0.34);
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
