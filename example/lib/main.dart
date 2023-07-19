import 'package:flutter/material.dart';
import 'package:set_primary_swatch_color/set_primary_swatch_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Color _colorTheme = const Color.fromARGB(255, 191, 231, 163);
  SetMaterialColor setColor = SetMaterialColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: setColor.createMaterialColor(_colorTheme)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: ElevatedButton(child: Text('$_colorTheme'), onPressed: (){},)
        ),
      ),
    );
  }
}
