import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldEmailModel extends StatelessWidget {
  final String theCode;
  final String? myHintText;
  // final TextInputType keyboardType;

  const TextfieldEmailModel(
      {super.key,
      required this.theCode,
      this.myHintText,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: myHintText, contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
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
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
