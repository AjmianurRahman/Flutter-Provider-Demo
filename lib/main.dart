import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/providers/count_provider.dart';
import 'package:flutter_provider_demo/providers/example_one_provider.dart';
import 'package:flutter_provider_demo/screens/count_exscreen.dart';
import 'package:flutter_provider_demo/screens/example_one.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
        home: const ExampleOne(),
      ),
    );
    /*return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CountExscreen(),
    );*/
  }
}
