import 'package:flutter/material.dart';
import 'package:game_scoreboard/views/widgets/player_card.dart';
import 'package:game_scoreboard/models/players_model.dart';
import 'package:game_scoreboard/datas/data.dart' as data;

class ScoreBoard extends StatefulWidget {
  ScoreBoard({super.key});

  final List<Player> playerList = orderPlayersByScore(data.playerList);

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ClipRRect(
          
          borderRadius:BorderRadius.circular(40),
          child: Container(
            padding: EdgeInsets.all(5),
            color: Color.fromARGB(255, 231, 212, 159), 
            child:Text('Tableau des scores'.toUpperCase(),
            style: TextStyle(fontSize: 25,),
            )),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Container(
        color: const Color.fromARGB(255, 230, 218, 184),
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (context, index) => PlayerCard(
            player: widget.playerList[index],
            indiceClassement: index + 1,
          ),
          itemCount: widget.playerList.length,
        ),
      ),
    );
  }
}
