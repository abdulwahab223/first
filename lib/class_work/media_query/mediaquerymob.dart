import 'package:flutter/material.dart';

class MyCustomDialogs extends StatefulWidget {
  const MyCustomDialogs({super.key});

  @override
  State<MyCustomDialogs> createState() => _MyCustomDialogsState();
}

class _MyCustomDialogsState extends State<MyCustomDialogs> {
  showmyDragablesheet() {}
  //
  showMyBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,

          child: SingleChildScrollView(
            child: Column(
              children: [
                //
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                showMyBottomSheet();
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}

// Alert Dialog
// showMyDialog() {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         backgroundColor: Colors.blue,
//         title: Text("Logout"),
//         content: Text("Are you sure want to logout"),
//         actions: [
//           ElevatedButton(onPressed: () {}, child: Text("Cancel")),
//           ElevatedButton(
//             onPressed: () {
//               // Navigator.of(context).pop();
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text("Logged Out Successfully")),
//               );
//             },
//             child: Text("Logout"),
//           ),
//         ],
//       );
//     },
//   );
// }

// Simple Dialog
// showMyDialog() {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return SimpleDialog(
//         title: Text("Select one"),
//         children: [
//           SimpleDialogOption(onPressed: () {}, child: Text("Male")),
//           SimpleDialogOption(onPressed: () {}, child: Text("Female")),
//         ],
//       );
//     },
//   );
// }

// About Dialog
// showMyDialog() {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return AboutDialog(
//         applicationIcon: Image.asset("assets/images/car-2.png", width: 100),
//         applicationName: "Voiture",
//         applicationLegalese: "All rights Reserved",
//         applicationVersion: "1.0.1",
//         children: [],
//       );
//     },
//   );
// }

// Dialog
// showMyDialog() {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return Dialog(
//         backgroundColor: Colors.white,
//         child: Container(
//           width: 100,
//           height: 150,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Padding(
//                   padding: EdgeInsets.only(right: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [Icon(Icons.cancel)],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 50,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.green.shade200,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(Icons.check, color: Colors.green),
//               ),
//               SizedBox(height: 20),
//               Text("Payment Successful"),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
