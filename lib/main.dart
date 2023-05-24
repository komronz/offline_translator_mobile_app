import '../screens/category_screen.dart';
import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'model/translation.dart';
import 'screens/translation_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Translation> _availableTranslations = STORED_TRANSLATIONS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xffA8F600),
            foregroundColor: Colors.black,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18, //test
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryScreen(),
        TranslationDetailScreen.routName: (context) =>
            TranslationDetailScreen(_availableTranslations),
      },
    );
  }
}
