// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:facebook_web/components/circle_button.dart';
import 'package:facebook_web/components/contact_list.dart';
import 'package:facebook_web/components/create_post_area.dart';
import 'package:facebook_web/components/options_list.dart';
import 'package:facebook_web/components/post_card.dart';
import 'package:facebook_web/components/stories_area.dart';
import 'package:facebook_web/data/data.dart';
import 'package:facebook_web/models/model.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:facebook_web/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Responsive(
        mobile: HomeMobile(scrollController: _scrollController),
        desktop: HomeDesktop(scrollController: _scrollController),
      ),
    ));
  }
}

class HomeMobile extends StatelessWidget {
  final TrackingScrollController scrollController;
  const HomeMobile({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(controller: scrollController, slivers: [
      SliverAppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          floating: true,
          title: Text(
            'facebook',
            style: TextStyle(
              color: ColorPalette.facebookBlue,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: -1.2,
            ),
          ),
          actions: [
            CircleButton(
              icon: Icons.search,
              buttonFunction: () {},
              iconSize: 30,
            ),
            CircleButton(
              icon: LineIcons.facebookMessenger,
              buttonFunction: () {},
              iconSize: 30,
            ),
          ]),
      SliverToBoxAdapter(
        child: CreatePostArea(
          user: actualUser,
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
        sliver: SliverToBoxAdapter(
          child: StoryArea(
            user: actualUser,
            stories: stories,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          Post post = posts[index];
          return PostCard(post: post);
        }, childCount: posts.length),
      )
    ]);
  }
}

class HomeDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;
  const HomeDesktop({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: OptionsList(
            user: actualUser,
          ),
        ),
      ),
      Spacer(),
      Flexible(
        flex: 5,
        child: CustomScrollView(controller: scrollController, slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: StoryArea(
                user: actualUser,
                stories: stories,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CreatePostArea(
              user: actualUser,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              Post post = posts[index];
              return PostCard(post: post);
            }, childCount: posts.length),
          )
        ]),
      ),
      Spacer(),
      Flexible(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: ContactList(
            contacts: onlineUsers,
          ),
        ),
      )
    ]);
  }
}
