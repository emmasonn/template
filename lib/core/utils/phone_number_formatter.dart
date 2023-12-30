import 'package:flutter/services.dart';

//This formatter insert spaces in between the digit in a telephone format
class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }
    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (i == 2 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      } else if (nonZeroIndexValue % 6 == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      } else if (nonZeroIndexValue % 10 == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

//This class remove the leading zeros in front of digit
class LeadingZeroPhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }
    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (i == 2 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      } else if (nonZeroIndexValue % 6 == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      } else if (nonZeroIndexValue % 10 == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }
    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

//Class the insert spaces inbetween phone number
class PhoneNumberSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }
    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue == 3 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      } else if (nonZeroIndexValue % 7 == 0 &&
          nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

//function replica of the class the insert spacer inbetween number
String formatNumberWithSpace(String phoneNumber) {
  var bufferString = StringBuffer();
  for (int i = 0; i < phoneNumber.length; i++) {
    if (i == 3) {
      bufferString.write(' ');
    }
    if (i % 7 == 0) {
      bufferString.write(' ');
    }
    bufferString.write(phoneNumber.split('')[i]);
  }
  return bufferString.toString();
}

//Add space after every four character
class SpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = _addSpaces(newValue.text);
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(
        offset: newText.length,
      ),
    );
  }

  String _addSpaces(String text) {
    text = text.replaceAll(" ", ""); // Remove any existing spaces
    final formattedText = <String>[];
    for (int i = 0; i < text.length; i++) {
      if (i % 4 == 0 && i != 0) {
        formattedText.add(' '); // Add a space after every four characters
      }
      formattedText.add(text[i]);
    }
    return formattedText.join();
  }
}

String formatNumberAddSpace(String text) {
  text = text.replaceAll(" ", ""); // Remove any existing spaces
  final formattedText = <String>[];
  for (int i = 0; i < text.length; i++) {
    if (i % 4 == 0 && i != 0) {
      formattedText.add(' '); // Add a space after every four characters
    }
    formattedText.add(text[i]);
  }
  return formattedText.join();
}

String formatNumberAddHypen(String text) {
  text = text.replaceAll(" ", ""); // Remove any existing spaces
  final formattedText = <String>[];
  for (int i = 0; i < text.length; i++) {
    if (i % 4 == 0 && i != 0) {
      formattedText.add('-'); // Add a space after every four characters
    }
    formattedText.add(text[i]);
  }
  return formattedText.join();
}
