import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        color: Color(0xFF830AD1),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 180),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF9B3BDA),
                        ),
                        child: IconButton(
                          icon: Icon(FlutterRemix.user_line),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        FluentIcons.eye_show_24_regular,
                        size: 30,
                      ),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.help_outline_outlined),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(FlutterRemix.mail_add_line),
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 265, top: 25),
              child: Text(
                "Olá, Gelson",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
