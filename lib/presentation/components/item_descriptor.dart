import 'package:flutter/material.dart';

class IconDescriptor extends StatelessWidget {
  final IconData icon;
  const IconDescriptor({Key key, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
