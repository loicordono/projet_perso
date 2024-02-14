import 'package:formation_list_bottom_nav_bar/models/training_model.dart';

List<Training> trainingList = [
  Training(name: 'Prépa Art & 3D', category: 'Design', image: 'assets/images/1.png'),
  Training(name: 'Cinéma d\'animation 3D/VFX', category: 'Design', image: 'assets/images/2.png'),
  Training(name: 'Game, art & design', category: 'Design', image: 'assets/images/3.png'),
  Training(name: 'Gameplay programming', category: 'Développeur', image: 'assets/images/4.png'),
  Training(name: 'Concepteur designer ui', category: 'Développeur', image: 'assets/images/5.png'),
  Training(name: 'Community Manager', category: 'Développeur', image: 'assets/images/6.png'),
  Training(name: 'Développeur web & web mobile', category: 'Développeur', image: 'assets/images/7.png'),
  Training(name: 'Développeur Jeux vidéo', category: 'Développeur', image: 'assets/images/8.png'),
  
];

const String design = 'Design';

List<Training> filterTrainingByCategory(List<Training> trainingList, String category) {
  return trainingList.where((training) => training.category == category).toList();
}