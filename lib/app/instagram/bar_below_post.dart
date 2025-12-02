import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarBelowPost extends StatefulWidget {
  const BarBelowPost({super.key});

  @override
  State<BarBelowPost> createState() => _BarBelowPostState();
}

class _BarBelowPostState extends State<BarBelowPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.comment, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.swap_horiz, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.share, color: Colors.white),
          ),
          SizedBox(width: 170),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.watch_later_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
