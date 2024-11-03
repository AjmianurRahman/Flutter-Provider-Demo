import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CountExscreen extends StatefulWidget {
  const CountExscreen({super.key});

  @override
  State<CountExscreen> createState() => _CountExscreenState();
}

class _CountExscreenState extends State<CountExscreen> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
        centerTitle: true,
      ),
      body: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
        return Text(value.count.toString());
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
