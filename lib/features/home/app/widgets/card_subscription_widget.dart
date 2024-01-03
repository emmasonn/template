import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/utils/amount_formatter.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class CardSubscriptionWidget extends StatelessWidget {
  const CardSubscriptionWidget({
    super.key,
    this.isDue = false,
    required this.sub,
  });
  final Subscription sub;
  final bool isDue;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.push(
          AppScreenPaths.subscriptionDetailPath,
          extra: NavParamWrapper<Subscription>(object: sub),
        );
      },
      leading: SizedBox.square(
        dimension: 40,
        child: Image.asset(
          sub.asset,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        sub.title,
        style: TextStyles.t2.copyWith(
          fontSize: FontSizes.s13,
        ),
      ),
      subtitle: Text(
        isDue ? 'Upcoming in 4 days' : 'Next due on 20th Aug',
        style: TextStyles.caption.copyWith(
          fontSize: FontSizes.s10,
          color: isDue ? AppColors.error : context.colorScheme.onPrimary,
        ),
      ),
      trailing: RichText(
        text: TextSpan(
          text: '${addDollarToAmount('12500')}/',
          style: TextStyles.t1.copyWith(fontSize: FontSizes.s16),
          children: [
            TextSpan(
              text: 'month',
              style: TextStyles.t1.copyWith(
                fontSize: FontSizes.s10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
