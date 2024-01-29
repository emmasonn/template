import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class UpcomingSubscriptionWidget extends StatelessWidget {
  const UpcomingSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 15;
    return Container(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.onSurfaceVt,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(Corners.md),
        color: context.colorScheme.surface,
      ),
      padding: const EdgeInsets.only(
        left: 12.0,
        top: 16.0,
        bottom: 16.0,
      ),
      child: InkWell(
        onTap: () {
          context.push(AppScreenPaths.upcomingSubsriptionPath);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.upcomingSubscriptionTxt,
                  style: TextStyles.body1,
                ),
                //space vertiically
                const Gap(2.0),
                Text(
                  AppStrings.upcomingSubscriptionCaptionTxt,
                  style: TextStyles.body1.copyWith(
                    fontSize: FontSizes.s10,
                    color: context.colorScheme.onSurface,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: Stack(
                alignment: Alignment.centerRight,
                fit: StackFit.passthrough,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      radius: radius,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage(
                        AppAssets.spotifyPng,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      radius: radius,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage(
                        AppAssets.netflixPng,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    child: CircleAvatar(
                      radius: radius,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage(
                        AppAssets.youtubePng,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: CircleAvatar(
                      backgroundColor: AppColors.surface500,
                      radius: radius,
                      child: Text(
                        '+2',
                        style: TextStyles.notoSerifJP.copyWith(
                          fontSize: FontSizes.s12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
