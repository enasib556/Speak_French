import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/Pharses.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pharsesscreen extends StatelessWidget {
  Pharsesscreen({super.key});
  List<Itemmodel> phrases = [
    Itemmodel(
        frName: "Comment tu t'appelles ?",
        enName: 'What is your name?',
        sound: 'sounds/Phrases/What is your name.mp3'),
    Itemmodel(
        frName: "Quel âge as-tu ?",
        enName: 'How old are you',
        sound: 'sounds/Phrases/How old are you.mp3'),
    Itemmodel(
        frName: "Comment ça va ?",
        enName: 'How are you?',
        sound: 'sounds/Phrases/How are you.mp3'),
    Itemmodel(
        frName: "Ça va bien, merci",
        enName: 'I’m fine, thank you.',
        sound: 'sounds/Phrases/I’m fine, thank you..mp3'),
    Itemmodel(
        frName: "Bonjour",
        enName: 'Good Morrning',
        sound: 'sounds/Phrases/Good Morning.mp3'),
    Itemmodel(
        frName: "Bonsoir",
        enName: 'Good evening',
        sound: 'sounds/Phrases/Good evening.mp3'),
    Itemmodel(
        frName: "Au revoir",
        enName: 'Goodbye',
        sound: 'sounds/Phrases/Goodbye.mp3'),
    Itemmodel(
        frName: "À bientôt",
        enName: 'See you later',
        sound: 'sounds/Phrases/See you later.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 97, 114, 128),
          title: const Text(
            'Phrases',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'comici',
                fontSize: 30),
          ),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (BuildContext context, index) {
              return Pharses(phrases: phrases[index]);
            }));
  }
}
