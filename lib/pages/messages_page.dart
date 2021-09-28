// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget for Bubble Send
    Widget sendBubble() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Heheheheheheeeheheheh\nHehehe',
                        style: titleStyle.copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '4:30',
                        style: subtitleStyle.copyWith(color: blackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(width: 12),
            Image.asset(
              'assets/images/pic1.png',
              width: 40,
            ),
          ],
        ),
      );
    }

    //Widget for Bubble Send
    Widget receiveBubble() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/pic2.png',
              width: 40,
            ),
            SizedBox(width: 12),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Wkwkwwkkwkwwkwkk',
                        style: titleStyle.copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '4:30',
                        style: subtitleStyle.copyWith(color: blackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: darkWhite,
      floatingActionButton: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width - (2 * 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('type message...', style: subtitleStyle.copyWith(fontSize: 16),),
            Image.asset('assets/images/send.png', width: 35,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              height: 115,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/group1.png',
                    width: 55,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Jakarta Fair',
                        style: titleStyle,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '14.209 Members',
                        style: subtitleStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('assets/images/call.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
            sendBubble(),
            receiveBubble(),
          ],
        ),
      ),
    );
  }
}
