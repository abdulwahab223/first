import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar MyAppBar() {
  return AppBar(
    actions: [
      PopupMenuButton(
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.white,
        icon: Icon(Icons.settings, color: Colors.white, size: 32),

        surfaceTintColor: const Color.fromARGB(255, 242, 190, 255),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.purple),
                Text("Profile"),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.blue),
                Text("Setting"),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.red),
                Text("Logout"),
              ],
            ),
          ),
        ],
      ),
    ],

    // leading: Icon(Icons.person, color: Colors.white, size: 35),
    backgroundColor: Colors.green,
    title: Text(
      "My Profile",
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
