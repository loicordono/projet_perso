
class Player{

  String id;
  String name;
  int score;
  String image;

  Player({required this.id, required this.name, required this.score, required this. image,});

}

List<Player> orderPlayersByScore(List<Player> players) {

  players.sort((a, b) => b.score.compareTo(a.score));
  return players;
}