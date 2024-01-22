import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/icon_fonts/peniremit_font.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:sized_context/sized_context.dart';

class AppPopUpField extends StatefulWidget {
  const AppPopUpField({
    super.key,
    required this.items,
    required this.onChanged,
    this.label,
    this.height,
    this.style,
    required this.hintText,
    this.initValue,
  });
  final String? label;
  final String hintText;
  final String? initValue;
  final double? height;
  final TextStyle? style;
  final List<String> items;
  final Function(String) onChanged;

  @override
  State<AppPopUpField> createState() => _AppPopUpFieldState();
}

class _AppPopUpFieldState extends State<AppPopUpField> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: widget.style?.copyWith(
              fontSize: FontSizes.s14,
            ),
          ),
          const Gap(10)
        ],
        PopupMenuButton<String>(
          elevation: 1.0,
          constraints: BoxConstraints(
            maxWidth: double.infinity,
            minWidth: context.widthPx - 30,
          ),
          tooltip: null,
          position: PopupMenuPosition.under,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Corners.md,
            ),
          ),
          onSelected: (provider) {
            setState(() {
              selectedItem = provider;
            });
            widget.onChanged.call(provider);
          },
          surfaceTintColor: context.colorScheme.background,
          color: context.colorScheme.surface,
          itemBuilder: (context) {
            return widget.items
                .map(
                  (item) => PopupMenuItem<String>(
                    value: item,
                    padding: EdgeInsets.zero,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.items.indexOf(item) == 0) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                            child: Text(
                              AppStrings.selectServiceProviderTxt,
                              style: TextStyles.body1.copyWith(
                                  color: context.colorScheme.onPrimary),
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: context.dividerColor,
                          )
                        ],
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 18,
                              backgroundColor: context.onSurfaceVt,
                              child: const Icon(
                                PeniremitIcon.electricity,
                                size: 18.0,
                              ),
                            ),
                            title: Text(
                              item,
                              style: widget.style?.copyWith(
                                      color: context.colorScheme.onPrimary) ??
                                  TextStyles.body2,
                            ),
                          ),
                        ),
                        Divider(
                          height: 0,
                          color: context.dividerColor,
                        )
                      ],
                    ),
                  ),
                )
                .toList();
          },
          child: AppPopUpItem(
            label: widget.label,
            hintText: widget.hintText,
            initValue: selectedItem,
            style: widget.style,
          ),
        ),
      ],
    );
  }
}

class AppPopUpItem extends StatelessWidget {
  const AppPopUpItem({
    super.key,
    this.label,
    this.height,
    this.style,
    required this.hintText,
    this.initValue,
  });
  final String? label;
  final String hintText;
  final String? initValue;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        height: height ?? 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Corners.md),
            border: Border.all(
              color: context.onSurfaceVt,
              width: 0.5,
            ),
            color: context.colorScheme.surface),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        // child: ListTile(
        //   leading: CircleAvatar(
        //     radius: 18,
        //     backgroundColor: context.onSurfaceVt,
        //     child: const Icon(
        //       PeniremitIcon.electricity,
        //       size: 18.0,
        //     ),
        //   ),
        //   title: Text(
        //     initValue!,
        //     style: style?.copyWith(color: context.colorScheme.onPrimary) ??
        //         TextStyles.body2,
        //   ),
        //   trailing: Icon(
        //     Icons.keyboard_arrow_down,
        //     size: 18,
        //     color: context.onSurfaceVt,
        //   ),
        // ),
        child: Row(
          children: [
            if (initValue != null) ...[
              CircleAvatar(
                radius: 18,
                backgroundColor: context.onSurfaceVt,
                child: const Icon(
                  PeniremitIcon.electricity,
                  size: 18.0,
                ),
              ),
              const Gap(10.0),
              Expanded(
                flex: 4,
                child: Text(
                  initValue!,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: style?.copyWith(
                        color: context.colorScheme.onPrimary,
                      ) ??
                      TextStyles.body2,
                ),
              ),
            ] else
              Text(
                hintText,
                style: TextStyles.body1,
              ),
            const Spacer(
              flex: 1,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: context.onSurfaceVt,
            ),
          ],
        )

        // IgnorePointer(
        //   child: TextFormField(
        //     clipBehavior: Clip.hardEdge,
        //     style: style,
        //     enabled: false,
        //     keyboardType: TextInputType.number,
        //     autocorrect: false,
        //     decoration: InputDecoration(
        //       fillColor: context.colorScheme.surface,
        //       filled: true,
        //       contentPadding: const EdgeInsets.only(
        //         top: 16.0,
        //         bottom: 10,
        //       ),
        //       prefixIcon: const SizedBox(width: 5.0),
        //       border: OutlineInputBorder(
        //         borderSide: BorderSide(
        //           color: context.onSurfaceVt,
        //           width: 0.5,
        //         ),
        //         borderRadius: BorderRadius.circular(Corners.md),
        //       ),
        //       enabledBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //           color: context.onSurfaceVt,
        //           width: 0.5,
        //         ),
        //         borderRadius: BorderRadius.circular(Corners.md),
        //       ),
        //       focusedBorder: OutlineInputBorder(
        //         borderSide: BorderSide(
        //           color: context.onSurfaceVt,
        //           width: 0.5,
        //         ),
        //         borderRadius: BorderRadius.circular(Corners.md),
        //       ),
        //       hintText: hintText,
        //       hintStyle: style?.copyWith(
        //         fontSize: FontSizes.s14,
        //         color: context.colorScheme.onSurface,
        //       ),
        //       suffixIcon: Icon(
        //         Icons.keyboard_arrow_down,
        //         size: 18,
        //         color: context.onSurfaceVt,
        //       ),
        //     ),
        //     onChanged: null,
        //   ),
        // ),
        );
  }
}
