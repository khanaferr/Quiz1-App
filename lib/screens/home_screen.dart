import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _cards = ['♠', '♣', '♥', '♦', '🃏'];

  String _FirstCard = '❓';
  String _SecondCard = '❓';
  String _ThirdCard = '❓';

  void selectCard() {
    final RandomIndex = (DateTime.now().millisecondsSinceEpoch % 5);
    final FirstCard = _cards[RandomIndex];
    final SecondCard = _cards[RandomIndex];
    final ThirdCard = _cards[RandomIndex];

    if (FirstCard == _cards.last ||
        SecondCard == _cards.last ||
        ThirdCard == _cards.last) {
      print("🃏 The Joker is here!");
    }

    setState(() {
      _FirstCard = FirstCard;
      _SecondCard = SecondCard;
      _ThirdCard = ThirdCard;
    });

    void _reset() {
      setState(() {
        String _FirstCard = '❓';
        String _SecondCard = '❓';
        String _ThirdCard = '❓';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(bottom: 70),
              child: Text(
                'Select Cards!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SizedBox(width: 8), Text(_FirstCard)],
            ),
            SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(_SecondCard)],
            ),
            SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(_ThirdCard)],
            ),
            ElevatedButton(onPressed: selectCard, child: Text('Select Cards'))
            SizedBox(width: 8)
            ElevatedButton(onPressed: _reset, child: Text('Reset'))
          ],
        ),
      ),
    );
  }
}
