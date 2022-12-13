import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOne extends StatelessWidget {
  final String theCode;
  const ButtonOne({super.key, required this.theCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple[100],
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.amber[900],
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Sign in',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style:
                TextButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text(
                          'CODE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        content: Text(theCode),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                                FlutterClipboard.copy(theCode);
                              },
                              child: Text('Copy & Dismiss'))
                        ],
                      ));
            },
            child: Text(
              'Show Code',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
