import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first navbar"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Text('Clicks Counter: ', style: TextStyle( fontSize: 30 ),),
            Text('$counter', style: const TextStyle( fontSize: 25 ),)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.ac_unit_rounded ),
        onPressed: () { 
          counter++;
          print('How many I have pressed this button: $counter');
         },
        ),
    );
  }

}