import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/ListItem.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Colorsscreen extends StatelessWidget {
  Colorsscreen({super.key});
  List<Itemmodel> colors = [
    Itemmodel(
        image: 'assets/images/colors/red.png',
        frName: 'rouge',
        enName: 'red',
        sound: 'sounds/colors/red.mp3'),
    Itemmodel(
        image: 'assets/images/colors/pink.png',
        frName: 'rose',
        enName: 'pink',
        sound: 'sounds/colors/pink.mp3'),  
      Itemmodel(
        image: 'assets/images/colors/yellow.png',
        frName: 'jaune',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.mp3'),    
        Itemmodel(
        image: 'assets/images/colors/green.png',
        frName: 'vert',
        enName: 'green',
        sound: 'sounds/colors/green.mp3'),     
          Itemmodel(
        image: 'assets/images/colors/purple.png',
        frName: 'violet',
        enName: 'purple',
        sound: 'sounds/colors/purple.mp3'),       
        Itemmodel(
        image: 'assets/images/colors/brown.png',
        frName: 'brun',
        enName: 'brown',
        sound: 'sounds/colors/brown.mp3'),
    Itemmodel(
        image: 'assets/images/colors/black.png',
        frName: 'noir',
        enName: 'black',
        sound: 'sounds/colors/black.mp3'),
      Itemmodel(
        image: 'assets/images/colors/white.png',
        frName: 'blanc',
        enName: 'white',
        sound: 'sounds/colors/white.mp3'),    
    Itemmodel(
        image: 'assets/images/colors/gray.png',
        frName: 'gris',
        enName: 'gray',
        sound: 'sounds/colors/gray.mp3'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 196, 151),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 114, 128),
        title: const Text(
          'Colors',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'comici',
              fontSize: 30),
        ),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (BuildContext context, index) {
            return Listitem(itemmodel: colors[index]);
          }),
    );
  }
}
