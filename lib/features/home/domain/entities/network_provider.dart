import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_strings.dart';

class NetworkProvider extends Equatable {
  final String title;
  final Color brandColor;

  const NetworkProvider({
    required this.title,
    required this.brandColor,
  });

  //Networkk provider
  factory NetworkProvider.decodeProvider(String? number) {
    //* Network unique code
    final Map<String, dynamic> networkProviders = {
      'mtn': [
        0703,
        0706,
        0803,
        0806,
        0810,
        0813,
        0816,
        0814,
        0903,
        0906,
        0913,
        0916,
        0704,
      ],
      'glo': [0815, 0811, 0805, 0807, 0705, 0905, 0915],
      'airtel': [0701, 0708, 0812, 0802, 0808, 0902, 0901, 0904, 0907, 0912],
      '9mobile': [0809, 0818, 0817, 0909, 0908],
    };

    //* Network provider brandcolor
    final Map<String, dynamic> brandColor = {
      'mtn': AppColors.mtnColor,
      'glo': AppColors.gloColor,
      'airtel': AppColors.airtelColor,
      '9mobile': AppColors.mobile9Color,
    };

    final formattedNumber = number?.split(' ').join();

    if (number != null && number.length > 4) {
      final phoneCode = int.parse(formattedNumber!.substring(0, 4));

      for (var provider in networkProviders.keys) {
        for (var digit in (networkProviders[provider] as List<int>)) {
          //check the first 4 digits of the number
          if (digit == phoneCode) {
            return NetworkProvider(
              title: provider,
              brandColor: brandColor[provider],
            );
          }
        }
      }
    }
    return NetworkProvider(
      title: AppStrings.mtnTxt,
      brandColor: brandColor[AppStrings.mtnTxt.toLowerCase()],
    );
  }

  static String formatNumber(
    String number, {
    required Function(String) onChanged,
  }) {
    final formattedPhone = number.split(' ').join();
    if (formattedPhone.isNotEmpty &&
        formattedPhone[0] != '0' &&
        formattedPhone.length == 10) {
      number = '0$number';
      onChanged.call(number);
    }
    return number;
  }

  @override
  List<Object?> get props => [
        title,
        brandColor,
      ];
}
