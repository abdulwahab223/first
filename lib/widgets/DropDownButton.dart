import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDropdownbutton extends StatefulWidget {
  const MyDropdownbutton({super.key});

  @override
  State<MyDropdownbutton> createState() => _MyDropdownbuttonState();
}

class _MyDropdownbuttonState extends State<MyDropdownbutton> {
  @override
  Widget build(BuildContext context) {
    String? selectedvalue;

    return Container(
      color: Colors.blue,
      child: DropdownButton<String>(
        focusColor: Colors.green,

        hint: Text("Login"),
        value: selectedvalue,

        items: [
          DropdownMenuItem(
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.purple),
                Text("User", style: GoogleFonts.poppins()),
              ],
            ),
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Icon(Icons.person_off, color: Colors.purple),
                Text("Guest", style: GoogleFonts.poppins()),
              ],
            ),
          ),
          DropdownMenuItem(
            child: Row(
              children: [
                Icon(Icons.admin_panel_settings, color: Colors.purple),
                Text("Admin", style: GoogleFonts.poppins()),
              ],
            ),
          ),
        ],
        onChanged: (String? newvalue) {
          setState(() {
            selectedvalue = newvalue!;
          });
        },
      ),
    );
  }
}
