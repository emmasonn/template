import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/features/home/domain/entities/network_provider.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class NetworkProviderWidget extends StatefulWidget {
  const NetworkProviderWidget({
    super.key,
    required this.networkProvider,
    required this.onChanged,
  });

  final NetworkProvider networkProvider;
  final Function(NetworkProvider) onChanged;

  @override
  State<NetworkProviderWidget> createState() => _NetworkProviderWidgetState();
}

class _NetworkProviderWidgetState extends State<NetworkProviderWidget> {
  NetworkProvider? selectedNetworkProvider;

  @override
  Widget build(BuildContext context) {
    const networkProviders = <NetworkProvider>[
      NetworkProvider(title: AppStrings.mtnTxt, brandColor: AppColors.mtnColor),
      NetworkProvider(title: AppStrings.gloTxt, brandColor: AppColors.gloColor),
      NetworkProvider(
        title: AppStrings.airtelTxt,
        brandColor: AppColors.airtelColor,
      ),
      NetworkProvider(
        title: AppStrings.mobile9Txt,
        brandColor: AppColors.mobile9Color,
      ),
    ];

    return PopupMenuButton<NetworkProvider>(
      elevation: 1.0,
      position: PopupMenuPosition.under,
      padding: EdgeInsets.zero,
      initialValue: null, // selectedNetworkProvider ?? widget.networkProvider,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Corners.md,
        ),
      ),
      onSelected: (provider) {
        setState(() {
          selectedNetworkProvider = provider;
        });
        widget.onChanged.call(provider);
      },
      surfaceTintColor: context.colorScheme.background,
      color: context.colorScheme.background,
      itemBuilder: (context) {
        return networkProviders
            .map(
              (provider) => PopupMenuItem<NetworkProvider>(
                value: provider,
                // padding: const EdgeInsets.only(left: 20.0),
                child: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: provider.brandColor,
                  child: Text(
                    provider.title,
                    textAlign: TextAlign.center,
                    style: TextStyles.inter.copyWith(
                      color: Colors.white,
                      fontSize: FontSizes.s8,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
            .toList();
      },
      child: NetworkProviderItemWidget(
        networkProvider: selectedNetworkProvider ?? widget.networkProvider,
      ),
    );
  }
}

class NetworkProviderItemWidget extends StatelessWidget {
  const NetworkProviderItemWidget({
    super.key,
    required this.networkProvider,
  });
  final NetworkProvider networkProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(10.0),
        CircleAvatar(
          radius: 18.0,
          backgroundColor: networkProvider.brandColor,
          child: Text(
            networkProvider.title,
            style: TextStyles.inter.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: FontSizes.s8,
            ),
          ),
        ),
        const Gap(10.0),
        Icon(
          Icons.keyboard_arrow_down_rounded,
          color: context.colorScheme.onSurface,
          size: 30,
        ),
        SizedBox(
          height: 50.0,
          child: VerticalDivider(
            color: context.dividerColor,
          ),
        )
      ],
    );
  }
}
