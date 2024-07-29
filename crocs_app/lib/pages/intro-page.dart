// ignore_for_file: prefer_const_constructors

import 'package:crocs_app/pages/home-page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //logo
              SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Image.asset('lib/images/crocslogo.png', height: 90,),
              ),
              //title
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("walk in comfort, ", style: TextStyle(fontWeight: FontWeight.bold),),
                  const Text("wear in style")
                ],
              ),
              SizedBox(height: 80,),
              //elevatedbutton
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())),
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(8)
                  ),
                  padding: EdgeInsets.all(15),
                  child: Center(child: Text("Shop Now", style: TextStyle(color: Colors.grey[100], fontWeight: FontWeight.w600))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}