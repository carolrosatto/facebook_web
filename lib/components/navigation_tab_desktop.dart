// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_web/components/circle_button.dart';
import 'package:facebook_web/components/profile_image_button.dart';
import 'package:facebook_web/data/data.dart';
import 'package:facebook_web/models/model.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'navigation_tab.dart';

class NavigationTabDesktop extends StatelessWidget {
  final User user;
  final List<IconData> icons;
  final int selectedTabIndex;
  final Function(int) onTap;

  const NavigationTabDesktop({
    Key? key,
    required this.user,
    required this.icons,
    required this.selectedTabIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 4,
        )
      ]),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: ColorPalette.facebookBlue,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Expanded(
            child: NavigationTab(
              icons: icons,
              selectedTabIndex: selectedTabIndex,
              onTap: onTap,
              isIndicatorBottom: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ProfileImageButton(
                  user: actualUser,
                  onTap: () {},
                ),
                CircleButton(
                  icon: Icons.search,
                  buttonFunction: () {},
                  iconSize: 26,
                ),
                CircleButton(
                  icon: LineIcons.facebookMessenger,
                  buttonFunction: () {},
                  iconSize: 26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
