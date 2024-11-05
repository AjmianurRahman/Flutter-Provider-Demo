import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/providers/example_one_provider.dart';
import 'package:provider/provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ExampleOneProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Example One Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return CupertinoSlider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(value.value)),
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
