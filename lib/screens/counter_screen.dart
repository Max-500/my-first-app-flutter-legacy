import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase(){
    counter++;
    setState(() {});
  }

  void reload(){
    counter = 0;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My firsts navbars - CounterScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Text('Clicks Counter: ', style: TextStyle( fontSize: 30 ),),
            Text('$counter', style: const TextStyle( fontSize: 25 ),)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions( increaseFn: increase, reloadFn: reload, decreaseFn: decrease ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn, reloadFn, decreaseFn;

  const CustomFloatingActions({
    super.key, required this.increaseFn, required this.reloadFn, required this.decreaseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [

        FloatingActionButton(
          child: const Icon( Icons.add ),
          onPressed: () => increaseFn()
          ),

          FloatingActionButton(
          child: const Icon( Icons.delete_sharp ),
          onPressed: () => reloadFn(),
          ),            

          FloatingActionButton(
          child: const Icon( Icons.minimize ),
          onPressed: () => decreaseFn(),
          ),

      ],
    );
  }
}