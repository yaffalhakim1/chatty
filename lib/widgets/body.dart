import 'package:flutter/material.dart';
import 'package:mychat/theme.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({String imageUrl, String text, String time}) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xffebeff3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Color(0xff505c6b)),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff505c6b),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    Widget senderBubble({String imageUrl, String text, String time}) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Color(0xffebeff3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 16, color: Color(0xff505c6b)),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff505c6b),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width - (2 * 30),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
                color: Color(0xff999999),
              ),
            ),
            Image.asset(
              'assets/images/call_btn.png',
              width: 35,
            )
          ],
        ),
      );
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            receiverBubble(
              imageUrl: 'assets/images/friend2.png',
              text: 'hei',
              time: '2.30',
            ),
            SizedBox(
              height: 30,
            ),
            receiverBubble(
              imageUrl: 'assets/images/friend3.png',
              text: 'hei',
              time: '2.30',
            ),
            SizedBox(
              height: 30,
            ),
            senderBubble(
              imageUrl: 'assets/images/friend3.png',
              text: 'Still thinking about this\n client like hell...',
              time: '2.30',
            ),
            SizedBox(
              height: 100,
            ),
            chatInput(),
          ],
        ),
      ),
    );
  }
}
