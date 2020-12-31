import 'package:cetquiz_app/Screens/QuizPage.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cet Quiz')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Text(
                'Merhaba, bilişim sınavına hoşgeldiniz. '
                'Kendinizi bilişim dünyasında test etmeye var mısınız?',
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('Start'),
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizAbout(context);
            },
            child: Text('About'),
          )
        ],
      ),
    );
  }

  void gotoQuizAbout(BuildContext context) {}
}
