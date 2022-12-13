import 'package:flutter/material.dart';
import 'package:fluttercomponents/models/buttonone.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            "Custom TabBar",
            style: GoogleFonts.laila(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      body: Padding(
          padding: const EdgeInsets.all(50),
          // ignore: prefer_const_literals_to_create_immutables
          child: GridView.count(crossAxisCount: 2,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                ButtonOne(theCode: 'Padding(padding: const EdgeInsets.symmetric(horizontal: 50),child: Container( padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.amber[900], borderRadius: BorderRadius.circular(12)),child: Center(child: Text("Sign in",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18))))))',
      )]),
        ));
  }
}
