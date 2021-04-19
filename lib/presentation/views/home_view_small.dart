import 'package:flutter/material.dart';

class HomeViewSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Intentionally Left Unfinished',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          Text(
            'Fork this project and complete the small view!',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
