import 'package:flutter/material.dart';
import 'package:flutter_resume/presentation/views/home_view.dart';

void main() => runApp(FlutterResume());

class FlutterResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
