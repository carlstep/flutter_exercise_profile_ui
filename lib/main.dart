import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: [
          Positioned(
            top: 70,
            left: 20,
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.grey[100],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                  'assets/images/profile.jpg',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'John Rambo',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[100],
                ),
              ),
              Text(
                'john@gmail.com',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[100],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tileColor: Colors.amber,
                  title: Text(
                    'Upgrade to Premium',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tileColor: Colors.grey[700],
                  leading: Icon(
                    Icons.shopping_bag,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                  title: Text(
                    'Your Order History',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[100]),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tileColor: Colors.grey[700],
                  leading: Icon(
                    Icons.help_outline,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                  title: Text(
                    'Help and Support',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[100]),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tileColor: Colors.grey[700],
                  leading: Icon(
                    Icons.card_giftcard,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                  title: Text(
                    'Load Gift Voucher',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[100]),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tileColor: Colors.grey[700],
                  leading: Icon(
                    Icons.logout,
                    size: 40,
                    color: Colors.grey[100],
                  ),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[100]),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 70,
            right: 20,
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
    ),
  ));
}
