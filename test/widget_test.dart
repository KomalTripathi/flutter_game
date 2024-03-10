import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GameScreen(),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  double ballY = 0.0;
  double jumpHeight = 150.0;

  void jump() {
    setState(() {
      ballY -= jumpHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => jump(),
      child: Container(
        color: Colors.lightBlue,
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            alignment: Alignment(0.0, ballY),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
