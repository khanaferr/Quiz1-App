/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyFlip());
}

class MyFlip extends StatelessWidget {
  const MyFlip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _userChoice = '❓';
  String _computerChoice = '❓';
  String _result = '❓';

  final List<String> _choices = ['Rock', 'Paper', 'Scissors'];

  int playerScore = 0;
  int computerScore = 0;

  void _makeChoice(String userChoice) {
    final randomIndex = (DateTime.now().millisecondsSinceEpoch % 3);
    final computerChoice = _choices[randomIndex];
    String result;
    if (userChoice == computerChoice) {
      result = 'Draw';
    } else if ((userChoice == 'Rock' && computerChoice == 'Scissors') ||
        (userChoice == 'Paper' && computerChoice == 'Rock') ||
        (userChoice == 'Scissors' && computerChoice == 'Paper')) {
      result = 'You Win!';
      playerScore++;
    } else {
      result = 'You Lose!';
      computerScore++;
    }

    setState(() {
      _userChoice = userChoice;
      _computerChoice = computerChoice;
      _result = result;
    });
  }

  void _resetGame() {
    setState(() {
      _userChoice = '❓';
      _computerChoice = '❓';
      _result = '❓';
      playerScore = 0;
      computerScore = 0;
    });
  }

  Widget _choiceImage(String choice, {double size = 48}) {
    if (choice == '❓' || choice.isEmpty) {
      return Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        child: Text(
          '❓',
          style: TextStyle(color: Colors.white, fontSize: size * 0.6),
        ),
      );
    }

    final assetPath = 'assets/images/${choice.toLowerCase()}.png';
    return Image.asset(
      assetPath,
      width: 30,
      height: 30,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        child: Icon(Icons.help_outline, color: Colors.white, size: 14),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(bottom: 70),
              child: Text(
                "Let's Play Rock-Paper-Scissors!",
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
              children: [
                Text(
                  'Your Choice: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 8),
                _choiceImage(_userChoice, size: 48),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Computer Choice: ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 8),
                _choiceImage(_computerChoice, size: 48),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _makeChoice('Rock'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.black,
                  ),
                  child: Image.asset(
                    'assets/images/rock.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                    semanticLabel: 'Rock',
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _makeChoice('Paper'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.black,
                  ),
                  child: Image.asset(
                    'assets/images/paper.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                    semanticLabel: 'Paper',
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _makeChoice('Scissors'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.black,
                  ),
                  child: Image.asset(
                    'assets/images/scissors.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                    semanticLabel: 'Scissors',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Result: $_result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _resetGame, child: Text('Reset')),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 60),
              child: Text(
                'Player: $playerScore - Computer: $computerScore',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */