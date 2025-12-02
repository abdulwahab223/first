import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:login_page/widgets/MyAppBar.dart';

class Myprofilepage extends StatefulWidget {
  const Myprofilepage({super.key});
  @override
  State<Myprofilepage> createState() => _MyprofilepageState();
}

class _MyprofilepageState extends State<Myprofilepage> {
  String? selectRole;
  bool cheakvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer
      drawer: Drawer(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.lightGreen,
        child: Column(
          children: [DrawerHeader(child: CircleAvatar(radius: 55))],
        ),
      ),

      //main page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 70,
                  child: Center(
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Abdul Wahab",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "abdulwahab@gmail.com",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 11),
            DropdownButton<String>(
              iconEnabledColor: Colors.black,

              focusColor: Colors.green,
              dropdownColor: Colors.green.shade50,
              hint: Container(
                width: 122,
                height: 44,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(child: Text("Login")),
              ),

              items: [
                DropdownMenuItem(
                  value: 'user',
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.purple),
                      Text("User"),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'gurst',
                  child: Row(
                    children: [
                      Icon(Icons.person_off, color: Colors.blue),
                      Text("Guest"),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'admin',
                  child: Row(
                    children: [
                      Icon(Icons.admin_panel_settings, color: Colors.red),
                      Text("Admin"),
                    ],
                  ),
                ),
              ],
              onChanged: (String? newvalue) {
                setState(() {
                  selectRole = newvalue!;
                });
              },
            ),
            SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 7, 102, 11),
                      const Color.fromARGB(255, 118, 241, 116),
                    ],
                  ),
                ),
                child: CheckboxListTile(
                  tileColor: const Color.fromARGB(0, 76, 175, 79),
                  side: BorderSide(width: 2),
                  activeColor: const Color.fromARGB(0, 64, 155, 67),
                  checkColor: Colors.black,
                  title: Text(
                    "DarkTheme",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'On/Off',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                  ),
                  value: cheakvalue,
                  onChanged: (value) {
                    setState(() {
                      cheakvalue = !cheakvalue;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 11),
            Row(
              children: [
                SizedBox(width: 35),
                Text(
                  "Feedback",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: TextField(
                decoration: InputDecoration(
                  hint: Text(
                    "Plese Enter your Feedback",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
          ],
        ),
      ),
    );
  }
}
