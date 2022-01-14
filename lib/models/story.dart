import 'package:facebook_web/models/model.dart';

class Story {
  User user;
  String urlImage;
  bool wasViewed;

  Story({
    required this.user,
    required this.urlImage,
    this.wasViewed = false,
  });
}
