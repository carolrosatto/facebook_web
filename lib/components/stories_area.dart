// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web/components/profile_image.dart';
import 'package:facebook_web/data/data.dart';
import 'package:facebook_web/models/model.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:facebook_web/utils/responsive.dart';
import 'package:flutter/material.dart';

class StoryArea extends StatelessWidget {
  final User user;
  final List<Story> stories;

  const StoryArea({
    Key? key,
    required this.user,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      color: isDesktop ? Colors.transparent : Colors.white,
      height: 200,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              Story actualUserStory = Story(
                user: actualUser,
                urlImage: actualUser.urlImage,
              );
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: StoryCard(
                  story: actualUserStory,
                  addStory: true,
                ),
              );
            }

            Story story = stories[index - 1];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: StoryCard(
                story: story,
              ),
            );
          }),
    );
  }
}

class StoryCard extends StatelessWidget {
  final Story story;
  final bool addStory;

  const StoryCard({
    Key? key,
    required this.story,
    this.addStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: ColorPalette.storyGradient,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: addStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: ColorPalette.facebookBlue,
                    onPressed: () {},
                  ),
                )
              : ProfileImage(
                  urlImage: story.user.urlImage,
                  wasViewed: story.wasViewed,
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            addStory ? 'Criar story' : story.user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
