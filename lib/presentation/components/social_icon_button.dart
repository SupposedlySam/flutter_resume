import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  const SocialIconButton({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: IconButton(
        padding: const EdgeInsets.all(20),
        icon: Icon(
          icon,
          size: 16,
        ),
        onPressed: () {},
      ),
    );
  }
}
