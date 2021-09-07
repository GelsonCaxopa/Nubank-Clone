import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final VoidCallback onpressed;
  final String title;
  const ButtonPurple({Key? key, required this.onpressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF830AD1), borderRadius: BorderRadius.circular(30)),
      height: 52,
      width: 170,
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
