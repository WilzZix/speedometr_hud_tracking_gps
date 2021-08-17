import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:speedometr_hud_tracking_gps/screens/navigation_bottom_bar/main_bottom_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      onDone: () {},
      done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
      showDoneButton: false,
      pages: [
        PageViewModel(
          image: Image.asset('assets/img/img.png'),
          title: 'A reader lives a thousand lives',
          body: 'The man who never reads lives only one.',
        ),
        PageViewModel(
          title: 'Featured Books',
          body: 'Available right at your fingerprints',
          image: buildImage('assets/readingbook.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Simple UI',
          body: 'For enhanced reading experience',
          image: buildImage('assets/manthumbs.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Today a reader, tomorrow a leader',
          body: 'Start your journey',
          footer: ButtonWidget(
            text: 'Start Reading',
            onClicked: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigationBar(),
                ),
              );
            },
          ),
          image: buildImage('assets/learn.png'),
          decoration: getPageDecoration(),
        ),
      ],
      showSkipButton: true,
      skip: Text('Skip'),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).primaryColor,
      skipFlex: 0,
      nextFlex: 0,
      onSkip: () {},
      dotsDecorator: getDotDecoration(),
      next: Icon(Icons.arrow_forward),
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        onPressed: onClicked,
        color: Theme.of(context).primaryColor,
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
}
