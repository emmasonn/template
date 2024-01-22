import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/enum_constants.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_styles.dart';

class MeterTypeWidget extends StatelessWidget {
  const MeterTypeWidget({
    super.key,
    this.meterType = MeterType.prepaid,
    this.onSelected,
  });
  final MeterType meterType;
  final Function(MeterType)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MeterTypeItem(
            type: MeterType.prepaid,
            selected: meterType == MeterType.prepaid,
            onSelected: (type) => onSelected?.call(type),
          ),
        ),
        const Gap(20.0),
        Expanded(
          child: MeterTypeItem(
            type: MeterType.postpaid,
            selected: meterType == MeterType.postpaid,
            onSelected: (type) {
              return onSelected?.call(type);
            },
          ),
        ),
      ],
    );
  }
}

class MeterTypeItem extends StatelessWidget {
  const MeterTypeItem({
    super.key,
    required this.type,
    required this.selected,
    required this.onSelected,
  });
  final MeterType type;
  final bool selected;
  final Function(MeterType) onSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      fit: StackFit.passthrough,
      children: [
        Card(
          elevation: 0.0,
          margin: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          child: InkWell(
            onTap: () => onSelected.call(type),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Corners.md),
                border: Border.all(
                  width: 0.5,
                  color: selected ? AppColors.accent : context.onSurfaceVt,
                ),
                color: selected
                    ? context.colorScheme.background
                    : context.colorScheme.surface,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              alignment: Alignment.center,
              child: Text(
                type.name.capitalizeFirstLetter(),
                style: TextStyles.body1.copyWith(
                  color: selected
                      ? AppColors.accent
                      : context.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
        if (selected)
          const Positioned(
            right: 0,
            top: 0,
            child: CircleAvatar(
              backgroundColor: AppColors.accent,
              radius: 8,
              child: Icon(
                Icons.done,
                size: 12.0,
                weight: 20,
                color: AppColors.onAccent,
              ),
            ),
          )
      ],
    );
  }
}
