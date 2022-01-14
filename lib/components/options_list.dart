// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_local_variable

import 'package:facebook_web/components/profile_image_button.dart';
import 'package:facebook_web/models/model.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OptionsList extends StatelessWidget {
  final User user;

  final List<List> _options = const [
    [LineIcons.userFriends, ColorPalette.facebookBlue, 'Amigos'],
    [LineIcons.facebookMessenger, ColorPalette.facebookBlue, 'Mensagens'],
    [LineIcons.flag, Colors.orange, 'Páginas'],
    [LineIcons.users, ColorPalette.facebookBlue, 'Grupos'],
    [Icons.storefront_outlined, ColorPalette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Colors.red, 'Assistir'],
    [LineIcons.calendar, Colors.deepPurple, 'Eventos'],
    [LineIcons.chevronCircleDown, Colors.black54, 'Ver mais'],
  ];

  const OptionsList({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10),
          itemCount: 1 + _options.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: ProfileImageButton(
                  user: user,
                  onTap: () {},
                ),
              );
            }

            List item = _options[index - 1];
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Option(
                  icon: item[0],
                  color: item[1],
                  onTap: () {},
                  text: item[2],
                ));
          }),
    );
  }
}

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onTap;

  const Option({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 35),
          SizedBox(
            width: 6,
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    ));
  }
}
