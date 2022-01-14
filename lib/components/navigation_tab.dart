// ignore_for_file: prefer_const_constructors

import 'package:facebook_web/utils/colors_palette.dart';
import 'package:flutter/material.dart';

class NavigationTab extends StatelessWidget {
  final List<IconData> icons;
  final int selectedTabIndex;
  final Function(int) onTap;
  final bool isIndicatorBottom;

  const NavigationTab({
    Key? key,
    required this.icons,
    required this.selectedTabIndex,
    required this.onTap,
    this.isIndicatorBottom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicator: BoxDecoration(
          border: isIndicatorBottom
              ? Border(
                  bottom: BorderSide(
                    color: ColorPalette.facebookBlue,
                    width: 3,
                  ),
                )
              : Border(
                  top: BorderSide(
                    color: ColorPalette.facebookBlue,
                    width: 3,
                  ),
                ),
        ),
        onTap: onTap,
        tabs: icons
            .asMap()
            .map((index, icon) {
              return MapEntry(
                index,
                Tab(
                  icon: Icon(icon,
                      color: selectedTabIndex == index
                          ? ColorPalette.facebookBlue
                          : Colors.black54,
                      size: 30),
                ),
              );
            })
            .values
            .toList());
  }
}
