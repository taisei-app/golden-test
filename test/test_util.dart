import 'package:flutter/material.dart';

Widget testableWidget({required Widget child}) {
  return MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      fontFamily: 'Murecho',
    ),
    debugShowCheckedModeBanner: false,
    home: child,
  );
}
