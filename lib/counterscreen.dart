import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ostad App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(counter.toString(),style: TextStyle(
            fontSize: 35,
          ),),


        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            counter = counter +1;
            setState(() {});
          },child: Icon(Icons.add),),
          const SizedBox(width: 8,),
          FloatingActionButton(onPressed: (){
            counter = counter -1;
            setState(() {});
          },child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}
