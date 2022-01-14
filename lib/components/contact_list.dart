// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:facebook_web/components/profile_image_button.dart';
import 'package:facebook_web/models/model.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<User> contacts;

  const ContactList({
    Key? key,
    required this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(children: [
          Expanded(
            child: Text(
              'Contatos',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Colors.grey[700],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey[700],
            ),
          )
        ]),
        Expanded(
          child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                User user = contacts[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ProfileImageButton(
                    user: user,
                    onTap: () {},
                  ),
                );
              }),
        )
      ],
    ));
  }
}
