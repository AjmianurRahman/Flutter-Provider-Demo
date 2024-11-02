import 'package:flutter/material.dart';

class CountExscreen extends StatefulWidget {
  const CountExscreen({super.key});

  @override
  State<CountExscreen> createState() => _CountExscreenState();
}

class _CountExscreenState extends State<CountExscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
        centerTitle: true,
      ),
      body: Center(child: Text('0') ,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
