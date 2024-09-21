import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/ListItem.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  List<Itemmodel> numbers = [
    Itemmodel(
        image: 'assets/images/numbers/numberr1.png',
        frName: 'uni',
        enName: 'one',
        sound: 'sounds/numbers/one.mp3'),
    Itemmodel(
        image: 'assets/images/numbers/number2.png',
        frName: 'deux',
        enName: 'two',
        sound: 'sounds/numbers/two.mp3'),
    Itemmodel(
        image: 'assets/images/numbers/number3.png',
        frName: 'trois',
        enName: 'three',
        sound: 'sounds/numbers/three.mp3'),
    Itemmodel(
        image: 'assets/images/numbers/number4.png',
        frName: 'quatre',
        enName: 'four',
        sound: 'sounds/numbers/four.mp3'),    
    Itemmodel(
        image: 'assets/images/numbers/number5.png',
        frName: 'cinq',
        enName: 'five',
        sound: 'sounds/numbers/five.mp3'),  
    Itemmodel(
        image: 'assets/images/numbers/number6.png',
        frName: 'six',
        enName: 'six',
        sound: 'sounds/numbers/six.mp3'),   
    Itemmodel(
        image: 'assets/images/numbers/number7.png',
        frName: 'sept',
        enName: 'seven',
        sound: 'sounds/numbers/seven.mp3'),
    Itemmodel(
        image: 'assets/images/numbers/number8.png',
        frName: 'huit',
        enName: 'eight',
        sound: 'sounds/numbers/eight.mp3'),    
    Itemmodel(
        image: 'assets/images/numbers/number9.png',
        frName: 'neuf',
        enName: 'nine',
        sound: 'sounds/numbers/nine.mp3'),  
    Itemmodel(
        image: 'assets/images/numbers/number10.png',
        frName: 'dix',
        enName: 'ten',
        sound: 'sounds/numbers/ten.mp3'),             
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'comici',
              fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 97, 114, 128),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, index ) {
          return Listitem(itemmodel: numbers[index]);
        },
      ),
    );
  }
}
