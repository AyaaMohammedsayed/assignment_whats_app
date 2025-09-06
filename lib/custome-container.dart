import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  Widget content;
  bool isSend;
  

  CustomeContainer({required this.content,required this.isSend});

  @override
  Widget build(BuildContext context) {
    Color color = isSend == true ? Color(0xff168C4B) : Color(0xff232D36);
    BorderRadiusGeometry borderRadius=isSend==true?BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ):BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        );
    return Container(
      constraints: BoxConstraints(
        maxWidth:
            MediaQuery.of(context).size.width * 0.7, 
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius
      ),
      child: content,
    );
  }
}
