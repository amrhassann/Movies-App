import 'package:flutter/material.dart';
import 'package:movie_app_clean_arch_course/movies/presetation/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MoviesScreen(),
    );
  }
}

