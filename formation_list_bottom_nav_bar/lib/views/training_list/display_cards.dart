import 'package:flutter/material.dart';
import 'package:formation_list_bottom_nav_bar/datas/colors.dart';
import 'package:formation_list_bottom_nav_bar/models/training_model.dart';
import 'package:formation_list_bottom_nav_bar/datas/data.dart' as data;
import 'package:formation_list_bottom_nav_bar/views/training_list/widgets/training_card.dart';

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
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  TrainingCard(training: widget.trainingList[index]),
              separatorBuilder: (context, index) =>
                  Divider(height: 20, color: SECONDARY_THEME_COLOR),
              itemCount: widget.trainingList.length),
        ),
      ),
    );
  }
}
