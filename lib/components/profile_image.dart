import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String urlImage;
  final bool wasViewed;

  const ProfileImage({
    Key? key,
    required this.urlImage,
    this.wasViewed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: ColorPalette.facebookBlue,
      child: CircleAvatar(
        radius: wasViewed ? 20 : 16,
        backgroundImage: CachedNetworkImageProvider(urlImage),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
