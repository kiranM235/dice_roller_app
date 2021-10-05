import 'dart:math';

import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
),
);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // Image
          Center(child: Image.asset("assets/$diceNumber.png", height: 350, width: 350,)),
          // Button
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text("Roll", style: TextStyle(color: Colors.white),),

          ),
          SizedBox(height: 150),
          // Text
          Text("Developed By: Kiran Maharjan", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}


