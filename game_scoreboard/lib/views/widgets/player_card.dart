import 'package:flutter/material.dart';
import 'package:game_scoreboard/models/players_model.dart';
import 'package:game_scoreboard/datas/data.dart' as data;

class PlayerCard extends StatelessWidget {
  final Player player;
  final List<Player> playerList = data.playerList;
  int indiceClassement = 0;

  PlayerCard({super.key, required this.player, required this.indiceClassement});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (indiceClassement == 1)
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/medal.png',
                          color: Color(0xFFFFD700),
                        ),
                        Text(
                          indiceClassement.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  else if (indiceClassement == 2)
                    Stack(alignment: Alignment.center, children: [
                      Image.asset('assets/images/medal.png',
                          color: Color(0xFFC0C0C0)),
                      Text(
                        indiceClassement.toString(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ])
                  else if (indiceClassement == 3)
                    Stack(alignment: Alignment.center, children: [
                      Image.asset('assets/images/medal.png',
                          color: Color(0xFF614E1A)),
                      Text(
                        indiceClassement.toString(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ])
                  else
                    Text(
                      indiceClassement.toString(),
                      style: TextStyle(fontSize: 15),
                    ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(
              backgroundImage: AssetImage(player.image),
            ),
          ],
        ),
        title: Text(player.name),
        trailing: Text(player.score.toString()),
      ),
    );
  }
}
