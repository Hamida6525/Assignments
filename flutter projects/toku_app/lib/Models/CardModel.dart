import 'package:audioplayers/audioplayers.dart';

class CardModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const CardModel({
    this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  void playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
