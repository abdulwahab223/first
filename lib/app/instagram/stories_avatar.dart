import 'package:flutter/material.dart';

class StoriesAvatar extends StatefulWidget {
  const StoriesAvatar({super.key, required this.image});
  final Image image;
  @override
  State<StoriesAvatar> createState() => _StoriesAvatarState();
}

class _StoriesAvatarState extends State<StoriesAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: BoxBorder.all(width: 2, color: Colors.white),
      ),
      child: Container(child: ClipOval(child: widget.image)),
    );
  }
}
