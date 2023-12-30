import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomBottomNavWidget extends StatelessWidget {
  const CustomBottomNavWidget({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.style,
    required this.activeColor,
    required this.color,
    required this.activeBgColor,
    this.defaultBgColor = Colors.transparent,
    this.iconSize = 24,
    this.bottomNavHeight,
  });
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;
  final TextStyle style;
  final Color color;
  final Color activeColor;
  final Color defaultBgColor;
  final Color activeBgColor;
  final double iconSize;
  final double? bottomNavHeight;

  Widget _buildItem(
          final PersistentBottomNavBarItem item, final bool isSelected) =>
      AnimatedContainer(
        duration: Durations.slow,
        alignment: Alignment.center,
        curve: Curves.fastLinearToSlowEaseIn,
        color: isSelected ? activeBgColor : Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: IconTheme(
                data: IconThemeData(
                  size: iconSize,
                  color: isSelected ? activeColor : color,
                ),
                child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
              ),
            ),
            if (isSelected)
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  item.title ?? '',
                  style: style.copyWith(
                    color: isSelected ? activeColor : color,
                  ),
                ),
              )
          ],
        ),
      );

  @override
  Widget build(final BuildContext context) => Container(
        color: defaultBgColor,
        child: SizedBox(
          width: double.infinity,
          height: bottomNavHeight ?? kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.map((final item) {
              final int index = items.indexOf(item);
              return Flexible(
                flex: selectedIndex == index ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    onItemSelected(index);
                  },
                  child: _buildItem(item, selectedIndex == index),
                ),
              );
            }).toList(),
          ),
        ),
      );
}
