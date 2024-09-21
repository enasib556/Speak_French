import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/ListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Familymembersscreen extends StatelessWidget {
  Familymembersscreen({super.key});
  List<Itemmodel> familyMembers = [
    Itemmodel(
        image: 'assets/images/familyMembers/father.png',
        frName: 'père',
        enName: 'father',
        sound: 'sounds/familyMembers/father.mp3'),
      Itemmodel(
        image: 'assets/images/familyMembers/mother.png',
        frName: 'mère',
        enName: 'mother',
        sound: 'sounds/familyMembers/mother.mp3'), 
      Itemmodel(
        image: 'assets/images/familyMembers/son.png',
        frName: 'fils',
        enName: 'son',
        sound: 'sounds/familyMembers/son.mp3'),
      Itemmodel(
        image: 'assets/images/familyMembers/daugther.png',
        frName: 'fille',
        enName: 'daughter',
        sound: 'sounds/familyMembers/daugther.mp3'), 
      Itemmodel(
        image: 'assets/images/familyMembers/older-sister.png',
        frName: 'sœur aînée',
        enName: 'older sister',
        sound: 'sounds/familyMembers/older sister.mp3'),  
      Itemmodel(
        image: 'assets/images/familyMembers/older-brother.png',
        frName: 'frère aîné',
        enName: 'older brother',
        sound: 'sounds/familyMembers/older brother.mp3'),
      Itemmodel(
        image: 'assets/images/familyMembers/younger sister.png',
        frName: 'sœur cadette',
        enName: 'younger sister',
        sound: 'sounds/familyMembers/younger sister.mp3'),   
      Itemmodel(
        image: 'assets/images/familyMembers/younger brother.png',
        frName: 'jeune frère',
        enName: 'younger brother',
        sound: 'sounds/familyMembers/younger brother.mp3'), 
      Itemmodel(
        image: 'assets/images/familyMembers/grand-mother.png',
        frName: 'grand-mère',
        enName: 'grand mother',
        sound: 'sounds/familyMembers/grand mother.mp3'),   
      Itemmodel(
        image: 'assets/images/familyMembers/grand-father.png',
        frName: 'grand-père',
        enName: 'grand father',
        sound: 'sounds/familyMembers/grand father.mp3'),            
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 114, 128),
        title: const Text(
          'Family Members',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'comici',
              fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: ( BuildContext context, index) {
        return Listitem(itemmodel: familyMembers[index]);
      }),
    );
  }
}
