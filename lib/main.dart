import 'package:appointment_management_system/pages/homepage/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      locale: const Locale('en', 'US'),
      theme: ThemeData.from(
          colorScheme: const ColorScheme.light()
              .copyWith(primary: Colors.amber, secondary: Colors.black54)),
    );
  }
}
