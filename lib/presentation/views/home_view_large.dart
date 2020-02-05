import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewLarge extends StatelessWidget {
  final double maxHeight;

  const HomeViewLarge({
    @required this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    final contentHeight = maxHeight * .75;
    final footerHeight = maxHeight * .25;

    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: contentHeight,
          child: Row(
            children: <Widget>[
              Expanded(child: Container(color: Colors.blueGrey)),
              Expanded(child: Container(color: Colors.deepOrange)),
              Expanded(child: Container(color: Colors.pink)),
            ],
          ),
        ),
        Container(
            color: Colors.black,
            height: footerHeight,
            child: Row(
              children: <Widget>[
                FooterSection(
                  icon: FontAwesomeIcons.mobileAlt,
                  title: 'Phone Number',
                  info: [
                    '+1 256 254 84 56',
                    '+1 23-546-7890',
                  ],
                ),
                FooterSection(
                  icon: FontAwesomeIcons.mapMarkerAlt,
                  title: 'User Address',
                  info: [
                    '123 Test Street',
                    'Testing, CO',
                    'United States',
                  ],
                ),
                FooterSection(
                  icon: FontAwesomeIcons.paperPlane,
                  title: 'Email Address',
                  info: [
                    'johnsmith@test.com',
                    'officeEmail@testco.com',
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

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
          IconDescriptor(
            icon: icon,
          ),
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
