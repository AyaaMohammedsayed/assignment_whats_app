import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(39),
            borderSide: BorderSide(color: Color(0xff168C4B)),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
            child: Image.asset(
              'assets/Send.png',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
          ),
          hintText: 'Type a Message ...',
          prefixIcon: Padding(
            padding:EdgeInsets.symmetric(vertical: 12, horizontal: 5),
            child: Image.asset(
              'assets/Camera.png',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
