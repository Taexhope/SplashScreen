import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 212, 10, 77).withOpacity(0.8),
              Colors.orange.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 180),
                SizedBox(
                  height: 360,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/food_logo.png',
                          width: 200,
                          height: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Fresh Foods',
                            style: GoogleFonts.dancingScript(
                              fontSize: 38,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                            ),
                          ),
                        Text(
                          'Tasty & Healthy',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset('assets/fruits_image.png')],
              ),
            )
          ],
        ),
      ),
    );
  }
}