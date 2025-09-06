import 'package:assignment_whats_app/custome-container.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        backgroundColor: Color(0xff168C4B),
        leadingWidth: 75,
        leading: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              'assets/arrow.png',
              height: 16,
              fit: BoxFit.scaleDown,
              width: 10,
            ),
            const SizedBox(width: 18),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(18.5),
              child: Image.asset(
                'assets/profile (2).png',
                height: 37,
                fit: BoxFit.fill,
                width: 37,
              ),
            ),
          ],
        ),
        title: Text(
          'John Safwat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        actions: [
          Image.asset(
            'assets/Phone.png',
            height: 24,
            fit: BoxFit.fill,
            width: 24,
          ),
          SizedBox(width: 22),
          Image.asset(
            'assets/video.png',
            height: 24,
            fit: BoxFit.fill,
            width: 24,
          ),
          SizedBox(width: 22),
          Image.asset(
            'assets/More-vertical.png',
            height: 24,
            fit: BoxFit.fill,
            width: 24,
          ),
          SizedBox(width: 22),
        ],
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back_ground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeContainer(content: Text('Hello !', style: textStyle), isSend: true,),

            Row(
              children: [
                Spacer(),
                CustomeContainer(
                   isSend: false,
                  content: Text('Hello !', style: textStyle),
                ),
              ],
            ),
            CustomeContainer(
                 isSend: true,
              content: Text(
                "Hey! Have you ever thought\nabout how random moments\ncan sometimes turn into the best memories? It’s like the\n universe loves to surprise us\n when we least expect it!",
                style: textStyle,
              ),
            ),
            CustomeContainer(
                isSend: true,
              content: Column(
                children: [
                  Text(
                    "what a Great Content Tp learn Flutter",
                    style: textStyle,
                  ),
                  Image.asset('assets/route.png'),
                ],
              ),
            ),

            Row(
              children: [
                Spacer(),
                CustomeContainer(
                     isSend: false,
                  content: Text(
                    'what a Great Content Tp learn Flutter',
                    style: textStyle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                // TextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
