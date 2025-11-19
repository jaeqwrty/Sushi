import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 116, 42, 37),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            //ShopName
            Text(
              'Sushi Man',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('assets/image/bento.png'),
            ),

            const SizedBox(height: 25),
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 44,
              ),
            ),
            Text(
              'Feel the most popular Japanese food from anywhere and anytime',
              style: TextStyle(
                color: const Color.fromARGB(255, 194, 189, 189),
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            MyButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
