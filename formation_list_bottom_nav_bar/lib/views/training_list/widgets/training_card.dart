import 'package:flutter/material.dart';
import 'package:formation_list_bottom_nav_bar/models/training_model.dart';

class TrainingCard extends StatelessWidget {
  final Training training;
  const TrainingCard({super.key, required this.training});

  @override
  Widget build(BuildContext context) {

      Color checkCategories = Color(0xFFD0B482);
      Color textCategories = Color(0xFFD0B482);

      if (training.category == 'Design') {
      checkCategories = Colors.deepPurple;
      textCategories = Colors.white;
      }else if(training.category == 'Développeur') {
        checkCategories =  Colors.greenAccent.shade200;
        textCategories = Colors.black;
      }else if(training.category == 'Manager') {
        checkCategories =  Color.fromARGB(255, 191, 0, 255);
        textCategories = const Color.fromARGB(255, 255, 255, 255);
      }

      // Widget listFormation =
       return Container(
        height: 150,
        padding: EdgeInsets.only(left: 0, right: 10,top: 10,bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(training.image), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: checkCategories,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 0.498),
                                  blurRadius: 10,
                                  spreadRadius: 3)
                            ]),
                        height: 30,
                        padding: EdgeInsets.all(5),
                        child: Center(
                            child: Text(
                          training.category,
                          style: TextStyle(
                              color: textCategories,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      
                      padding: EdgeInsets.only(right: 15, left: 10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 20, 20, 0.5),
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(20)),
                      ),
                      child: Text(
                        training.name.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
        );
        // return listFormation;
  }
}
