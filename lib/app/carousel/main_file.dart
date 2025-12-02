import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_page/app/carousel/page1.dart';
import 'package:login_page/app/carousel/page2.dart';
import 'package:login_page/app/carousel/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainFile extends StatefulWidget {
  const MainFile({super.key});

  @override
  State<MainFile> createState() => _MainFileState();
}

class _MainFileState extends State<MainFile> {
  // CarouselController MyPage = CarouselController();
  CarouselSliderController myCarouselCont = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(backgroundColor: const Color.fromARGB(255, 255, 151, 186)),
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: myCarouselCont,
              items: [Page1(), Page2(), Page3()],
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 500,
                //
                scrollPhysics: BouncingScrollPhysics(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1),
              ElevatedButton(
                onPressed: () {
                  myCarouselCont.previousPage();
                },
                child: Text("Previous Pagee"),
              ),
              ElevatedButton(
                onPressed: () {
                  myCarouselCont.nextPage();
                },
                child: Text("Next page"),
              ),
              SizedBox(width: 1),
            ],
          ),
          SizedBox(height: 15),
          // Stack(children: [
          // SmoothPageIndicator(controller: myCarouselCont, count: 3),
          // ],)
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     SizedBox(width: 2),
          //     ElevatedButton(
          //       onPressed: () {
          //         MyPage.previousPage(
          //           duration: Duration(microseconds: 1000),
          //           curve: Curves.bounceIn,
          //         );
          //       },
          //       child: Text(
          //         "Previous Page",
          //         style: TextStyle(color: Colors.black),
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         MyPage.nextPage(
          //           duration: Duration(microseconds: 100),
          //           curve: Curves.bounceIn,
          //         );
          //       },
          //       child: Text("Next Page", style: TextStyle(color: Colors.black)),
          //     ),
          //     SizedBox(width: 2),
          //   ],
          // ),
          // SizedBox(height: 18),
          //
        ],
      ),
    );
  }
}
