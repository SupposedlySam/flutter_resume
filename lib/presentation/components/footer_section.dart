import 'package:flutter/material.dart';
import 'package:flutter_resume/presentation/components/item_descriptor.dart';

class FooterSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> info;
  const FooterSection({
    @required this.icon,
    @required this.title,
    @required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconDescriptor(icon: icon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              ...info
                  .map(
                    (line) => [
                      Text(
                        line,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5)
                    ],
                  )
                  .expand((x) => x)
                  .toList()
                    ..removeLast(),
            ],
          )
        ],
      ),
    );
  }
}
