import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewLarge extends StatelessWidget {
  final double maxHeight;
  final double maxWidth;

  const HomeViewLarge({
    @required this.maxHeight,
    @required this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final contentHeight = maxHeight * .75;
    final contentWidth = maxWidth * .85;
    final footerHeight = maxHeight * .25;
    final footerWidth = maxWidth * .9;

    return SizedBox.expand(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: contentHeight,
            width: contentWidth,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'John Smith',
                              style: TextStyle(
                                  fontSize: 45, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Flutter Developer',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.pink),
                            ),
                          ],
                        ),
                        Container(height: 10, width: 100, color: Colors.pink),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style: TextStyle(letterSpacing: 1.4, height: 2),
                          textAlign: TextAlign.end,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.all(4),
                          child: GestureDetector(
                            child: Container(
                              color: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 60,
                                vertical: 20,
                              ),
                              child: Text(
                                'HIRE ME',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRect(
                    child: Image.asset(
                      'assets/resume-image.jpg',
                      height: contentHeight,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: Colors.black,
              height: footerHeight,
              width: footerWidth,
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
      ),
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
