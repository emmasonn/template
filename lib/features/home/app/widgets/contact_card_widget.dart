import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/resources/app_styles.dart';

class ContactCardWidget extends StatelessWidget {
  const ContactCardWidget({
    super.key,
    required this.onPressed,
  });
  // final Contact contact;
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPressed.call('07060452302');
      },
      leading: const CircleAvatar(
        radius: 20,
        child: Icon(
          PeniremitIcon.person,
          size: 14,
        ),
      ),
      title: Text(
        'Emmanuel Udomisor',
        style: TextStyles.body1,
      ),
      subtitle: Text(
        '070645454545',
        style: TextStyles.body2,
      ),
    );
  }
}
