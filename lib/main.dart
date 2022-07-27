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
              const CircleAvatar(
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
              const SizedBox(
                height: 10,
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
              const ProfileMenuItem(
                text: 'Your Order History',
                icon: Icons.shopping_bag_outlined,
                arrowShown: true,
              ),
              const ProfileMenuItem(
                text: 'Help and Support',
                icon: Icons.help_outline_outlined,
                arrowShown: true,
              ),
              const ProfileMenuItem(
                text: 'Load Gift Voucher',
                icon: Icons.card_giftcard_outlined,
                arrowShown: true,
              ),
              const ProfileMenuItem(
                text: 'Logout',
                icon: Icons.logout_outlined,
                arrowShown: false,
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

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        tileColor: Colors.grey[700],
        leading: Icon(
          icon,
          size: 40,
          color: Colors.grey[100],
        ),
        title: Text(
          '$text',
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[100]),
        ),
        trailing: arrowShown
            ? Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.grey[100],
              )
            :,
      ),
    );
  }
}
