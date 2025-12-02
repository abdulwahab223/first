// import 'package:flutter/material.dart';

// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class PageViewWidget extends StatefulWidget {
//   const PageViewWidget({super.key});

//   @override
//   State<PageViewWidget> createState() => _PageViewWidgetState();
// }

// class _PageViewWidgetState extends State<PageViewWidget> {
//   late TextEditingController passwordController;

//   //   final _pages = [];

//   @override
//   void initState() {
//     super.initState();
//     passwordController = TextEditingController();
//   }

//   PageController _controller = PageController();
//   TextEditingController email = TextEditingController();

//   //
//   @override
//   void dispose() {
//     super.dispose();
//     passwordController.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.red, title: Text("Page View")),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: _controller,
//               physics: BouncingScrollPhysics(),
//               // scrollDirection: Axis.vertical,
//               children: [Page1(), Page2(), Page3()],
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.only(bottom: 20),
//             child: SmoothPageIndicator(
//               controller: _controller,
//               count: 3,
//               effect: ExpandingDotsEffect(dotColor: Colors.green),
//             ),
//           ),
//         ],
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _controller.nextPage(
//             duration: Duration(microseconds: 1000),
//             curve: Curves.bounceInOut,
//           );
//         },
//         child: Icon(Icons.arrow_forward_ios),
//       ),
//     );
//   }
// }
