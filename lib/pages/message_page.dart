import 'package:flutter/material.dart';

import 'package:mychat/widgets/body.dart';
import 'package:mychat/widgets/header.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9ED0FF),
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 20,
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}
