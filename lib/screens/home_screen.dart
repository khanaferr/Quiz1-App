import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _cards = ['♠', '♣', '♥', '♦', '🃏'];

  String _firstCard = '❓';
  String _secondCard = '❓';
  String _thirdCard = '❓';
  String _message = '';

  void selectCard() {
    final random = Random();
    final firstCard = _cards[random.nextInt(_cards.length)];
    final secondCard = _cards[random.nextInt(_cards.length)];
    final thirdCard = _cards[random.nextInt(_cards.length)];

    setState(() {
      _firstCard = firstCard;
      _secondCard = secondCard;
      _thirdCard = thirdCard;

      if (_cards.last == firstCard ||
          _cards.last == secondCard ||
          _cards.last == thirdCard) {
        _message = '🃏 The Joker is here!';
      } else {
        _message = '';
      }
    });
  }

  void _reset() {
    setState(() {
      _firstCard = '❓';
      _secondCard = '❓';
      _thirdCard = '❓';
      _message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 70),
              child: Text(
                'Select Cards!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_firstCard, style: const TextStyle(fontSize: 40)),
                const SizedBox(width: 20),
                Text(_secondCard, style: const TextStyle(fontSize: 40)),
                const SizedBox(width: 20),
                Text(_thirdCard, style: const TextStyle(fontSize: 40)),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              _message,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: selectCard,
                  child: const Text('Select Cards'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _reset,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
