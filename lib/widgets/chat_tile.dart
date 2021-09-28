// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({ Key? key }) : super(key: key);
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({required this.imageUrl, required this.name, required this.text, required this.time, required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleStyle,
              ),
              Text(
                text,
                style: unread ? subtitleStyle.copyWith(color: blackColor) : subtitleStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleStyle,
          )
        ],
      ),
    );
  }
}
