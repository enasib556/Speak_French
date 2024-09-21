import 'package:audioplayers/audioplayers.dart';

class Itemmodel {
 final String ?  image;
 final  String frName;
 final String enName;
 final  String sound;
  Itemmodel( {
      required this.frName,
       this.image,
      required this.enName,
      required this.sound });

  playsound() {
    final player = AudioPlayer();
    player.play(
      AssetSource(sound),
    );
  }
}
