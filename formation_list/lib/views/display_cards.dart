import 'package:flutter/material.dart';
import 'package:formation_list/datas/colors.dart';
import 'package:formation_list/models/training_model.dart';
import 'package:formation_list/datas/data.dart' as data;
import 'package:formation_list/views/widgets/training_card.dart';

class DisplayCards extends StatefulWidget {
  DisplayCards({super.key});

  final List<Training> trainingList = data.trainingList;
  @override
  State<DisplayCards> createState() => _DisplayCardsState();
}

class _DisplayCardsState extends State<DisplayCards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: THEME_COLOR,
            title: Text(
              'Liste des Formations',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    TrainingCard(training: widget.trainingList[index]),
                separatorBuilder: (context, index) =>
                    Divider(height: 20, color: Color(0xFFD0B482)),
                itemCount: widget.trainingList.length),
          ),
              ),
    );
  }
}
