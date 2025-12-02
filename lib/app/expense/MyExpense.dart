import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ExpanceTracker extends StatefulWidget {
  const ExpanceTracker({super.key});

  @override
  State<ExpanceTracker> createState() => _ExpanceTrackerState();
}

class _ExpanceTrackerState extends State<ExpanceTracker> {
  //i comment override to remove ellowerror
  // @override
  //list
  List<String> _myExpenxes = [];
  final dialogueController = TextEditingController();
  // double indicatorValue = 4;
  //
  //
  IconData? selectedIcon;
  //cancel
  void CancleMyExpenses(int index) {
    setState(() {
      _myExpenxes.removeAt(index);
    });
  }

  //add
  void MyExpenses() {
    setState(() {
      _myExpenxes.add(dialogueController.text.trim());
    });
    dialogueController.clear();
    Navigator.pop(context);
  }

  //dialogue
  void _showmydialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          //content
          //
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(),
                child: DropdownButton<IconData>(
                  hint: Text(
                    "Add your icon",
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),

                  style: TextStyle(),

                  value: selectedIcon,

                  items: [
                    DropdownMenuItem(
                      value: Icons.shopping_bag,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shopping ",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          Icon(Icons.shopping_bag),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: FontAwesomeIcons.car,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Car ",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          Icon(FontAwesomeIcons.car),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: Icons.food_bank,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Food ",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          Icon(Icons.food_bank),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: Icons.tour,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tours ",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          Icon(Icons.tour),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedIcon = value!;
                    });
                  },
                ),
              ),

              //
              //
              TextField(
                keyboardType: TextInputType.number,
                controller: dialogueController,
                decoration: InputDecoration(
                  hint: Text("Add your expense", style: GoogleFonts.poppins()),

                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),

          title: Text(
            "Add Expenxes",
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancle"),
            ),
            ElevatedButton(
              onPressed: MyExpenses,
              child: Text("Add Expenses", style: GoogleFonts.poppins()),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final width = size.width;
    final hight = size.height;
    return Scaffold(
      //Floting Action Button
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Add new expenxes",
          style: GoogleFonts.poppins(
            //
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        onPressed: _showmydialog,
      ),
      // backgroundColor: Colors.purple,
      //App bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.notifications, color: Colors.purpleAccent),
                    Text("Notification 1"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.notifications, color: Colors.purpleAccent),
                    Text("Notification 2"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.notifications, color: Colors.purpleAccent),
                    Text("Notification 3"),
                  ],
                ),
              ),
            ],
          ),
        ],

        title: Text("Home", style: GoogleFonts.poppins(color: Colors.black)),
        centerTitle: true,
      ),
      //Drawer
      drawer: Drawer(backgroundColor: const Color.fromARGB(192, 255, 255, 255)),
      //Scaffold body
      body: Column(
        children: [
          Expanded(
            flex: 28,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Container(
                  width: width * 0.9,
                  height: hight * 0.22,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 63, 32, 238),
                        const Color.fromARGB(255, 161, 106, 224),
                        const Color.fromARGB(255, 164, 74, 199),
                        const Color.fromARGB(255, 230, 202, 161),
                        const Color.fromARGB(255, 212, 76, 22),
                      ],
                      begin: AlignmentGeometry.bottomLeft,
                      end: AlignmentGeometry.topRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width * 0.05),
                      Text(
                        "All time expense",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: width * 0.17),

                      SizedBox(
                        width: width * 0.2,
                        height: hight * 0.1,
                        child: CircularProgressIndicator(
                          //
                          color: Colors.black,
                          value: 0.6,

                          strokeCap: StrokeCap.round,
                          strokeWidth: width * 0.03,
                          //
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 72,
            child: Center(
              child: Container(
                width: width * 1,
                height: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //
                      Row(
                        children: [
                          SizedBox(width: width * 0.03),
                          Text(
                            "Recent Expenses",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: hight * 0.009),
                      Container(
                        width: width * 0.9,
                        height: hight * 0.62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 52, 74, 199),
                              const Color.fromARGB(255, 163, 106, 189),
                              const Color.fromARGB(255, 192, 155, 55),
                              const Color.fromARGB(255, 218, 89, 89),
                            ],
                            end: AlignmentGeometry.topRight,
                            begin: AlignmentGeometry.bottomLeft,
                          ),
                        ),
                        child: Center(
                          child: _myExpenxes.isEmpty
                              ? Lottie.asset("asset/image/sandy.json")
                              : ListView.builder(
                                  itemCount: _myExpenxes.length,
                                  itemBuilder: (context, index) {
                                    final myuser = _myExpenxes[index];
                                    return Container(
                                      child: ListTile(
                                        title: Text(
                                          myuser,
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                          ),
                                        ),
                                        trailing: IconButton(
                                          onPressed: () {
                                            CancleMyExpenses(index);
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ),

                      //second row
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//model class

// import 'package:flutter/widgets.dart';

// class Expense {
//   String title;
//   double amount;
//   IconData? icon;
// Expense({
//   required this.title,
//   required this.amount,
//   required this.icon
// });
// }

//
///
//expense app made by sir
////
/////
///
///
///// import 'package:expenseapp/model/expense.dart';
// import 'package:flutter/material.dart';

// class ExpenseView extends StatefulWidget {
//   const ExpenseView({super.key});

//   @override
//   State<ExpenseView> createState() => _ExpenseViewState();
// }

// class _ExpenseViewState extends State<ExpenseView> {
//   //
//   final titleController = TextEditingController();
//   final amountController = TextEditingController();

//   //
//   IconData? selectedIocn;
//   double value = 0.0;

//   List<Expense> expenseList = [];

//   //
//   List<IconData> expenseIconsList = [
//     Icons.shopping_bag,
//     Icons.food_bank,
//     Icons.car_crash,
//     Icons.medical_services_outlined,
//   ];

//   //
//   double totalamount = 0.0;

//   //

//   double maxValue = 1000;

//   showMyDialog() {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Add Expense"),
//           content: Column(
//             children: [
//               // Title
//               TextField(
//                 controller: titleController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hint: Text("Add Title"),
//                 ),
//               ),

//               SizedBox(height: 10),

//               TextField(
//                 controller: amountController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hint: Text("Add Amount"),
//                 ),
//               ),
//               SizedBox(height: 10),

//               // DropdownButton<IconData>(
//               // value: selectedIocn,
//               //   items: expenseIconsList.map((icon) {
//               //     return DropdownMenuItem<IconData>(
//               //       child: Row(children: [Icon(icon)]),
//               //     );
//               //   }).toList(),
//               //   onChanged: (value) {
//               //     setState(() {
//               //       selectedIocn = value;
//               //     });
//               //   },
//               // ),
//               DropdownButton<IconData>(
//                 value: selectedIocn,
//                 isExpanded: true,
//                 items: expenseIconsList.map((icon) {
//                   return DropdownMenuItem<IconData>(
//                     value: icon,
//                     child: Row(children: [Icon(icon)]),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedIocn = value;
//                   });
//                 },
//               ),
//             ],
//           ),

//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("Cancel"),
//             ),

//             //
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   expenseList.add(
//                     Expense(
//                       title: titleController.text.trim(),
//                       amount: double.parse(amountController.text),
//                       icon: selectedIocn,
//                     ),
//                   );
//                   totalamount += double.parse(amountController.text);
//                 });
//                 //
//                 resetFields();
//                 Navigator.pop(context, true);
//               },
//               child: Text("Add"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     titleController.dispose();
//     amountController.dispose();
//   }

//   void resetFields() {
//     titleController.clear();
//     amountController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //
//     double actualValue = totalamount / 100;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             //
//             Container(
//               width: 400,
//               height: 400,
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 children: [
//                   //
//                   Expanded(flex: 5, child: Center(child: Text("All Expenses"))),
//                   Expanded(
//                     flex: 5,
//                     child: Center(
//                       child: CircularProgressIndicator(
//                         color: Colors.green,
//                         backgroundColor: Colors.grey,
//                         value: actualValue,
//                         valueColor: AlwaysStoppedAnimation(Colors.green),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             //
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: expenseList.length,
//               itemBuilder: (context, index) {
//                 final expense = expenseList[index];
//                 return ListTile(
//                   leading: Icon(expense.icon),
//                   title: Text(expense.title),
//                   subtitle: Text(expense.amount.toString()),
//                   trailing: InkWell(
//                     onTap: () {
//                       setState(() {
//                         expenseList.removeAt(index);
//                         totalamount - actualValue;
//                       });
//                     },
//                     child: Icon(Icons.delete),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showMyDialog();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
// grid view
//
// import 'package:flutter/material.dart';

// class ExpenseView extends StatefulWidget {
//   const ExpenseView({super.key});

//   @override
//   State<ExpenseView> createState() => _ExpenseViewState();
// }

// class _ExpenseViewState extends State<ExpenseView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,

//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 mainAxisExtent: MediaQuery.of(context).size.width * 0.2,
//               ),
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.amber,
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
