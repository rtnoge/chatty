// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chatty/pages/messages_page.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessagePage()),
            );
        },
        child: Icon(
          Icons.add,
          size: 28,
        ),
        backgroundColor: greenColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/profile_pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Enoge Cakep',
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Developer',
                  style: TextStyle(
                    color: lightBlue,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/pic1.png',
                        name: 'Teman Pertama',
                        text: 'Selamat malam...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/pic2.png',
                        name: 'Teman Kedua',
                        text: 'Halo, salam kenal',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Groups',
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone...',
                        time: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
