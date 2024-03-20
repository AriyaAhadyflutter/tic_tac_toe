import 'package:flutter/material.dart';
import 'package:tic_tac_toe/ui/players_name.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    ' :امتیاز ${PlayersKey.playertwocontroler.text}',
                    style: const TextStyle(
                      fontFamily: 'lalezar',
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/o.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    ' :امتیاز ${PlayersKey.playeronecontroler.text}',
                    style: const TextStyle(
                      fontFamily: 'lalezar',
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/x.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
