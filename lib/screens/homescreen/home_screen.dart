import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../counterscreen/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }

  Widget custombutton({required String text, required VoidCallback onPress}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  textStyle: const TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
