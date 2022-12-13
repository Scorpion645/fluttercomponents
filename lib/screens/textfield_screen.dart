// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';

import '../models/Textfield_Password_model.dart';
import '../models/Textfield_email_model.dart';

class TextfieldScreen extends StatefulWidget {
  TextfieldScreen({super.key});

  @override
  State<TextfieldScreen> createState() => _TextfieldsScreenState();
}

class _TextfieldsScreenState extends State<TextfieldScreen> {
  List textbuttons = [];

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
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_literals_to_create_immutables
          child: GridView.count(crossAxisCount: 2,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                TextfieldEmailModel(
                  theCode:
                      'Padding(padding: const EdgeInsets.symmetric(horizontal: 25), child: Container(decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),child: Padding(padding: const EdgeInsets.symmetric(horizontal: 14.0),child: TextField(keyboardType: TextInputType.emailAddress,decoration: InputDecoration(border: InputBorder.none, hintText: myHintText, contentPadding: EdgeInsets.symmetric(horizontal: 20)),),),),),',
                  myHintText: 'Email',
                ),
                TextfieldPasswordModel(
                    myHintText: 'Password',
                    theCode:
                        'Padding(padding: const EdgeInsets.symmetric(horizontal: 25), \nchild: Container(decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)), \nchild: Padding(padding: const EdgeInsets.symmetric(horizontal: 14.0), \nchild: TextField(obscureText: true, decoration: InputDecoration(border: InputBorder.none, hintText: myHintText, contentPadding: EdgeInsets.symmetric(horizontal: 20)))))'),
                        
              ]),
        ));
  }
}
