import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/app/instagram/bar_ablove_post.dart';
import 'package:login_page/app/instagram/bar_below_post.dart';
import 'package:login_page/app/instagram/stories_avatar.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.white),
        ),
        centerTitle: true,

        title: Text(
          "Instagram",
          style: GoogleFonts.pacifico(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      //nav bar
      body:
          //
          SingleChildScrollView(
            child: Column(
              //
              children: [
                //stories portion
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 7),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: BoxBorder.all(width: 2, color: Colors.white),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 42,
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      StoriesAvatar(
                        image: Image.asset(
                          "asset/image/pakwheel.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7),
                      StoriesAvatar(
                        image: Image.asset(
                          "asset/image/person1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7),
                      StoriesAvatar(
                        image: Image.asset(
                          "asset/image/person2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7),
                      StoriesAvatar(
                        image: Image.asset(
                          "asset/image/bmw.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7),
                      StoriesAvatar(
                        image: Image.asset(
                          "asset/image/mercedes.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                //main content
                SizedBox(height: 15),
                BarAblovePost(
                  image1: Image.asset("asset/image/pakwheel.png"),
                  text1: "Pakwheel",
                  icon1: Icons.more_horiz,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("asset/image/pakwheel.png"),
                    ),
                  ),
                ),
                BarBelowPost(),

                //2nd post
                SizedBox(height: 10),
                BarAblovePost(
                  image1: Image.asset('asset/image/bmw.png'),
                  text1: "Bmw",
                  icon1: Icons.more_horiz,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("asset/image/bmw.png"),
                    ),
                  ),
                ),
                BarBelowPost(),
                //3rd post
                SizedBox(height: 10),
                BarAblovePost(
                  image1: Image.asset(
                    'asset/image/person1.png',
                    width: 52,
                    height: 52,
                  ),
                  text1: "Person",
                  icon1: Icons.more_horiz,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("asset/image/person1.png"),
                    ),
                  ),
                ),
                BarBelowPost(),
                //4th post
                SizedBox(height: 10),
                BarAblovePost(
                  image1: Image.asset('asset/image/mercedes.png'),
                  text1: 'Mercedes',
                  icon1: Icons.more_horiz,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("asset/image/mercedes.png"),
                    ),
                  ),
                ),
                BarBelowPost(),
                //5thpost
                SizedBox(height: 10),
                BarAblovePost(
                  image1: Image.asset("asset/image/person2.png"),
                  text1: 'Person',
                  icon1: Icons.more_horiz,
                ),
                Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("asset/image/person2.png"),
                    ),
                  ),
                ),
                BarBelowPost(),
              ],
            ),
          ),
    );
  }
}
