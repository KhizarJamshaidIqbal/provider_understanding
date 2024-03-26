import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../counterscreen/counter.dart';
import '../counterscreen/counterproviderscreen.dart';
import '../favoritescreen/favoritescreen.dart';
import '../theam_changing_screen/theam_changing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          custombutton(
              text: 'Counter App With SetState',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterScreen(),
                  ),
                );
              }),
          custombutton(
              text: 'Counter App With Provider',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterProviderScreen(),
                  ),
                );
              }),
          custombutton(
              text: 'Favorit App With Provider',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ),
                );
              }),custombutton(
              text: 'Theam Change App With Provider',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TheamChangingScreen(),
                  ),
                );
              }),
              
        ],
      ),
    );
  }

  Widget custombutton({required String text, required VoidCallback onPress}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              onPressed: onPress,
              child: Text(
                text,
                style: GoogleFonts.robotoSlab(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
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
