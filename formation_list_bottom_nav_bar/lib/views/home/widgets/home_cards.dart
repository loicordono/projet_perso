import 'package:flutter/material.dart';
import 'package:formation_list_bottom_nav_bar/datas/colors.dart';

class HomeCard extends StatelessWidget {
  final String image;
  final String intitule;
  final String description;

  const HomeCard({super.key, required this.image, required this.intitule, required this.description });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover)),
          height: 200,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(intitule,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                  description),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'En savoir +',
                  style: TextStyle(color: THEME_COLOR),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(SECONDARY_THEME_COLOR)),
              )
            ],
          ),
        )
      ],
    );
  }
}
