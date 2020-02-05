import 'package:flutter/material.dart';
import 'package:flutter_resume/presentation/views/home_view_large.dart';
import 'package:flutter_resume/presentation/views/home_view_small.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth > 1000
            ? HomeViewLarge(
                maxHeight: constraints.maxHeight,
              )
            : HomeViewSmall();
      }),
    );
  }
}
