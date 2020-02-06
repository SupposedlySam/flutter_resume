import 'package:flutter/material.dart';
import 'package:flutter_resume/presentation/components/footer_section.dart';
import 'package:flutter_resume/presentation/components/skill_progress.dart';
import 'package:flutter_resume/presentation/components/social_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewLarge extends StatelessWidget {
  final double maxHeight;
  final double maxWidth;

  HomeViewLarge({
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
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 45, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Flutter Developer',
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(fontSize: 22, color: Colors.pink),
                            ),
                          ],
                        ),
                        Container(height: 10, width: 100, color: Colors.pink),
                        LimitedBox(
                          maxHeight: contentHeight * .5,
                          child: ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                style: TextStyle(letterSpacing: 1.4, height: 2),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ),
                        _hireMeButton()
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
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: SizedBox(
                      height: contentHeight * .8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SkillProgress(skill: 'Design', competency: 0.8),
                          SkillProgress(skill: 'Photography', competency: 0.65),
                          SkillProgress(skill: 'Marketing', competency: 0.50),
                          SkillProgress(skill: 'Branding', competency: 0.30),
                          SkillProgress(skill: 'Flutter', competency: 1),
                          Wrap(
                            runSpacing: 10,
                            spacing: 10,
                            children: <Widget>[
                              SocialIconButton(
                                icon: FontAwesomeIcons.twitter,
                              ),
                              SocialIconButton(
                                icon: FontAwesomeIcons.facebookF,
                              ),
                              SocialIconButton(
                                icon: FontAwesomeIcons.linkedinIn,
                              ),
                              SocialIconButton(
                                icon: FontAwesomeIcons.googlePlusG,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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

  Container _hireMeButton() {
    return Container(
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
            'HIRE ME'.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
