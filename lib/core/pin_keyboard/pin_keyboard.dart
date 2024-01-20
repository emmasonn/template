import 'package:flutter/material.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';

class PinKeyboardController {
  VoidCallback? _resetCallback;

  void addResetListener(VoidCallback listener) {
    _resetCallback = listener;
  }

  void reset() {
    if (_resetCallback != null) {
      _resetCallback!();
    }
  }
}

class PinKeyboard extends StatefulWidget {
  final double space;
  final int length;
  final double maxWidth;
  final void Function(String)? onChange;
  final void Function(String)? onConfirm;
  final VoidCallback? onBiometric;
  final bool enableBiometric;
  final Widget? iconBiometric;
  final Widget? iconBackspace;
  final Color? iconBackspaceColor;
  final Color? iconBiometricColor;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final PinKeyboardController? controller;

  const PinKeyboard({
    Key? key,
    this.space = 50,
    required this.length,
    required this.onChange,
    this.onConfirm,
    this.onBiometric,
    this.enableBiometric = false,
    this.iconBiometric,
    this.maxWidth = 350,
    this.iconBackspaceColor,
    this.iconBiometricColor,
    this.textColor,
    this.fontSize = 30,
    this.fontWeight = FontWeight.bold,
    this.iconBackspace,
    this.controller,
  }) : super(key: key);

  @override
  _PinKeyboardState createState() => _PinKeyboardState();
}

class _PinKeyboardState extends State<PinKeyboard> {
  String _pinCode = '';

  @override
  void initState() {
    _restListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width > 800
            ? widget.maxWidth
            : double.infinity,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: context.onSurfaceVt,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 8.0,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '1',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '2',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '3',
                    onPress: _handleTabNumber,
                  ),
                ),
              ],
            ),
            //vertical spacer
            const SizedBox(
              height: 5.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '4',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '5',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '6',
                    onPress: _handleTabNumber,
                  ),
                ),
              ],
            ),
            //vertical spacer
            const SizedBox(
              height: 5.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '7',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '8',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '9',
                    onPress: _handleTabNumber,
                  ),
                ),
              ],
            ),
            //vertical spacer
            const SizedBox(
              height: 5.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: _BiometricIconWidget(
                    widget: widget,
                    onPress: _handleTabBiometric,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _NumberWidget(
                    widget: widget,
                    number: '0',
                    onPress: _handleTabNumber,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _BackspaceIconWidget(
                    widget: widget,
                    onPress: _handleTabBackspace,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleTabNumber(String number) {
    if (_pinCode.length < widget.length) {
      _pinCode += number;
      if (widget.onChange != null) {
        widget.onChange!(_pinCode);
      }
      if (_pinCode.length == widget.length) {
        if (widget.onConfirm != null) {
          widget.onConfirm!(_pinCode);
        }
        if (widget.controller == null) {
          _pinCode = '';
        }
      }
    }
  }

  void _handleTabBiometric() {
    if (widget.onBiometric != null) {
      widget.onBiometric!();
    }
  }

  void _handleTabBackspace() {
    if (_pinCode.isNotEmpty) {
      _pinCode = _pinCode.substring(0, _pinCode.length - 1);
      if (widget.onChange != null) {
        widget.onChange!(_pinCode);
      }
    }
  }

  void _restListener() {
    widget.controller?.addResetListener(() {
      _pinCode = '';
      if (widget.onChange != null) {
        widget.onChange!('');
      }
    });
  }
}

class _BackspaceIconWidget extends StatelessWidget {
  final PinKeyboard widget;
  final VoidCallback onPress;

  const _BackspaceIconWidget({
    Key? key,
    required this.widget,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => _ImageWidget(
        widget: widget,
        icon: Icon(
          Icons.backspace,
          size: 25,
          color: widget.textColor,
        ),
        onPress: onPress,
      );
}

class _BiometricIconWidget extends StatelessWidget {
  final PinKeyboard widget;
  final VoidCallback onPress;

  const _BiometricIconWidget({
    Key? key,
    required this.widget,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (widget.enableBiometric) {
      return _ImageWidget(
        widget: widget,
        icon: const SizedBox(),
        //  const Icon(
        //   Icons.fingerprint,
        //   size: 30,
        // ),
        onPress: onPress,
      );
    } else {
      return SizedBox(
        height: widget.space,
        width: widget.space,
      );
    }
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    Key? key,
    required this.widget,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final PinKeyboard widget;
  final Widget icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) => InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.space),
        ),
        child: Container(
          height: widget.space,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Corners.sm),
            color: context.colorScheme.surface,
          ),
          child: Center(child: icon),
        ),
        onTap: () {
          onPress();
        },
      );
}

class _NumberWidget extends StatelessWidget {
  const _NumberWidget({
    Key? key,
    required this.widget,
    required this.number,
    required this.onPress,
  }) : super(key: key);

  final PinKeyboard widget;
  final String number;
  final void Function(String p1) onPress;

  @override
  Widget build(BuildContext context) => InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.space),
        ),
        child: Container(
          height: widget.space,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Corners.sm),
            color: context.colorScheme.surface,
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                fontSize: 20,
                color: widget.textColor ?? const Color(0xCD000000),
                shadows: [
                  Shadow(
                    color: widget.textColor?.withOpacity(0.4) ??
                        Colors.grey.shade100,
                    offset: const Offset(1, 1),
                  )
                ],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        onTap: () {
          onPress(number);
        },
      );
}
