import 'package:flutter/material.dart';

class SkillProgress extends StatelessWidget {
  final String skill;
  final double competency;

  const SkillProgress({
    @required this.skill,
    @required this.competency,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: skill.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' ( ${competency * 100}% )',
                style: TextStyle(color: Colors.pink),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
          value: competency,
        )
      ],
    );
  }
}
