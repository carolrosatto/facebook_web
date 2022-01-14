// ignore_for_file: prefer_const_constructors

import 'package:facebook_web/components/profile_image.dart';
import 'package:facebook_web/models/model.dart';
import 'package:flutter/material.dart';

class ProfileImageButton extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const ProfileImageButton({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileImage(
            urlImage: user.urlImage,
            wasViewed: true,
          ),
          SizedBox(
            width: 6,
          ),
          Flexible(
            child: Text(
              user.name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
