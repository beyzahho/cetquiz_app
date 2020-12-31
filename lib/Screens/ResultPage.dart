import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sonuç '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/kupa.png',
              width: 800,
              height: 800,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: Text(
                'Tebrikler!',
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Toplam skorunuz',
            style: TextStyle(fontSize: 35),
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
