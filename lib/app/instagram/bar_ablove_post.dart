import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarAblovePost extends StatefulWidget {
  const BarAblovePost({
    super.key,
    required this.image1,
    required this.text1,
    required this.icon1,
  });
  final Image image1;
  final String text1;
  final IconData icon1;
  @override
  State<BarAblovePost> createState() => _BarAblovePostState();
}

class _BarAblovePostState extends State<BarAblovePost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(child: widget.image1),
          SizedBox(width: 12),
          Text(widget.text1, style: GoogleFonts.poppins(color: Colors.white)),
          SizedBox(width: 222),
          IconButton(
            onPressed: () {},
            icon: Icon(widget.icon1, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
