import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/providers/count_provider.dart';
import 'package:flutter_provider_demo/providers/example_one_provider.dart';
import 'package:flutter_provider_demo/providers/fovourite_provider.dart';
import 'package:flutter_provider_demo/providers/theme_provider.dart';
import 'package:flutter_provider_demo/screens/count_exscreen.dart';
import 'package:flutter_provider_demo/screens/dark_theme.dart';
import 'package:flutter_provider_demo/screens/example_one.dart';
import 'package:flutter_provider_demo/screens/favourite/favourite_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final themeChanger  = Provider.of<ThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_)=> FavoriteProvider()),
        ChangeNotifierProvider(create: (_)=> ThemeProvider())
      ],
      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
          brightness: Brightness.light,
            primarySwatch: Colors.blue
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),

          home: const DarkTheme(),
        );
      },)
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
