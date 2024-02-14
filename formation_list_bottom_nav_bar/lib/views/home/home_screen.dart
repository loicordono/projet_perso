import 'package:flutter/material.dart';
import 'package:formation_list_bottom_nav_bar/datas/colors.dart';
import 'package:formation_list_bottom_nav_bar/views/home/widgets/home_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          alignment: Alignment.topCenter,
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  Text('L\'école O3D',
                      style: TextStyle(
                          color: SECONDARY_THEME_COLOR,
                          fontSize: 34,
                          fontWeight: FontWeight.bold)),
                  Text('Pourquoi choisir objectif 3D ?'),
                  Text('3 campus')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, style: BorderStyle.solid, color: Colors.grey)),
              child: Column(
                children: [
                  Column(
                    children: [
                      HomeCard(
                          image: 'assets/images/1.png',
                          intitule: 'Montpellier',
                          description:
                              'Nos locaux s’étendent sur plus de 1000m2 au Nord de Montpellier, au sein du Parc d’Activités Agropolis, à proximité des facultés de Lettres et Sciences.'),
                      HomeCard(
                          image: 'assets/images/2.png',
                          intitule: 'Angoulême',
                          description:
                              'Nos locaux s’étendent sur plus de 1000m2 au Nord de Montpellier, au sein du Parc d’Activités Agropolis, à proximité des facultés de Lettres et Sciences.'),
                      HomeCard(
                          image: 'assets/images/3.png',
                          intitule: 'Distanciel',
                          description:
                              'Nos locaux s’étendent sur plus de 1000m2 au Nord de Montpellier, au sein du Parc d’Activités Agropolis, à proximité des facultés de Lettres et Sciences.'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(
                    'Chaque jour, depuis plus de 23 ans, Objectif 3D conjugue',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '«Exigence, Passion et Qualité»',
                  style: TextStyle(
                      color: SECONDARY_THEME_COLOR,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
        Container(
          child: Stack(alignment: Alignment.center, children: [
            Container(
              color: SECONDARY_THEME_COLOR,
              height: 180,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CRÉATION EN 1999',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        'Fort de ses 22 ans d’expérience, O3D est l’école emblématique Montpelliéraine dans les métiers et la formation de la 3D.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            )
          ]),
        ),
        Container(
          height: 700,
          padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Depuis plus de 20 ans, nous sommes au service de nos étudiant(e)s. Nous les accompagnons au quotidien dans nos cursus de formation 3D : de Cinéma d’Animation & VFX, de Jeux vidéo ou de Programmation Gameplay. Chaque jour, nous mettons à leur service, toute l’expérience et la passion de nos enseignant(e)s, des intervenant(e)s extérieur(e)s qui sont tous des professionnel(le)s avéré(e)s et parfaitement connaisseur(seuse)s des univers auxquels nos étudiant(e)s se destinent.',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: PARAGRAPHE_THEME_COLOR, fontSize: 16,fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Depuis sa création, O3D c’est l’histoire de belles rencontres et c’est aussi l’une des forces et spécificité de notre école. En effet, grâce à un solide réseau d’ancien(ne)s élèves qui travaillent dans les plus beaux et les plus innovants studios du monde. Nous proposons à nos élèves une incroyable variété de contacts en France et à l’international.',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: PARAGRAPHE_THEME_COLOR, fontSize: 16,fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Choisir son école, c’est décider de prendre en main sa vie professionnelle. Pendant leur cycle d’apprentissage, la vie de nos étudiant(e)s se partage entre enseignement technique et approche comportementale des métiers.',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: PARAGRAPHE_THEME_COLOR, fontSize: 16,fontWeight: FontWeight.w500,),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: SECONDARY_THEME_COLOR,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '97%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'D\'employabilité',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '20',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Métiers préparés',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '100',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Studios Partenaires',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'Ainsi en fin de cursus, ils/elles auront atteint un niveau technique qui leur permettra d’intégrer les productions de leur choix. Autant en cinéma 3D ou jeux vidéo. Ainsi ils/elles exprimeront leur passion et de communiqueront leur enthousiasme, qualités indispensables aujourd’hui à la réussite d’une carrière professionnelle. Forts de notre succès sur le site de Montpellier, et avec la même démarche qualité, nous avons ouvert il y a quelques années une nouvelle école à Angoulême.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: PARAGRAPHE_THEME_COLOR),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Flexible(
                        child: Text(
                      'Cursus en 3 ou 4 ans, et \n 1100h de formation/an',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(
                    'O3D a en moyenne 300h de formation en plus que les autres écoles similaires.Ces cours sont donnés par 40 enseignant(e)s professionnel(le)s ayant travaillé dans les plus grands studios',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: THEME_COLOR,
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: SECONDARY_THEME_COLOR,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'À O3D c’est aussi',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      '7 jeux vidéos produits chaque année \n Des jeux vidéo designés & développés en interne',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '+ 800k TÉLÉCHARGEMENTS \n STEAM',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Test de nos jeux auprès d’une communauté d’initiés',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/steam_icon.png',
                    width: 30,
                    height: 30,
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: 150,height: 5,color: SECONDARY_THEME_COLOR,),
                  Text('Les disciplines')
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
