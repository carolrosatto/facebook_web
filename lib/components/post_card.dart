// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web/components/profile_image.dart';
import 'package:facebook_web/models/model.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:facebook_web/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(children: [
          //Post header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHeader(post: post),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    post.description,
                  ),
                ),
              ],
            ),
          ),
          //Post image
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(imageUrl: post.urlImage),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(children: [
              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorPalette.facebookBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    '${post.likes}',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  '${post.comments} comentários',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 10),
                Text(
                  '${post.shares} compartilhamentos',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ]),
              Divider(thickness: 1.2),
              //Post buttons
              Row(children: [
                PostActionButton(
                  icon: Icon(
                    LineIcons.thumbsUpAlt,
                    color: Colors.grey[700],
                  ),
                  text: "Curtir",
                  onTap: () {},
                ),
                PostActionButton(
                  icon: Icon(LineIcons.alternateCommentAlt,
                      color: Colors.grey[700]),
                  text: "Comentar",
                  onTap: () {},
                ),
                PostActionButton(
                  icon: Icon(
                    LineIcons.share,
                    color: Colors.grey[700],
                  ),
                  text: "Compartilhar",
                  onTap: () {},
                ),
              ])
            ]),
          )
        ]),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  final Post post;
  const PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ProfileImage(
        urlImage: post.user.urlImage,
        wasViewed: true,
      ),
      SizedBox(
        width: 8.0,
      ),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            post.user.name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(children: [
            Text('${post.timeAgo} - '),
            Icon(
              Icons.public,
              size: 14,
              color: Colors.grey[600],
            ),
          ])
        ]),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz),
      )
    ]);
  }
}

class PostActionButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const PostActionButton({
    required this.icon,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              icon,
              SizedBox(width: 4),
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
