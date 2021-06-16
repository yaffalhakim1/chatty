import 'package:flutter/material.dart';

import '../theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/group1.png'),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter Group',
                style: titleTextStyle,
              ),
              Text(
                '190 member',
                style: subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Image.asset('assets/images/call_btn.png'),
        ],
      ),
    );
  }
}
