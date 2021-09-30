import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Image imageIcon;

  const CircleIcon({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.imageIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, bottom: 20, top: 30),
        child: Column(
          children: [
            Container(
              child: Container(
                child: Center(
                  child: imageIcon,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF0F1F5),
              ),
              height: 73.5,
              width: 73.5,
            ),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
