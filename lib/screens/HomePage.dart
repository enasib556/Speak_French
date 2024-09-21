import 'package:SpeakFrench/screens/ColorsScreen.dart';
import 'package:SpeakFrench/screens/FamilyMembersScreen.dart';
import 'package:SpeakFrench/screens/NumbersScreen.dart';
import 'package:SpeakFrench/screens/PharsesScreen.dart';
import 'package:SpeakFrench/widgets/Category.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 114, 128),
        title: const Center(
          child: Text(
            'French App',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'comici',
                fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 40,
          children: [
            Category(
              text: 'Numbers',
              icon: const Icon(
                Icons.filter_9_plus,
                size: 50,
                color: Colors.deepPurple,
              ),
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return NumbersScreen();
                  }),
                );
              },
            ),
            Category(
              text: 'Family Members',
              icon: const Icon(
                Icons.family_restroom,
                size: 50,
                color: Colors.green,
              ),
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Familymembersscreen();
                    },
                  ),
                );
              },
            ),
            Category(
              text: 'Colors',
              icon: Icon(
                Icons.palette,
                size: 60,
                color: Color.fromARGB(255, 210, 196, 151),
              ),
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Colorsscreen();
                }));
              },
            ),
            Category(
              text: 'Pharses',
              icon: const Icon(
                Icons.chat,
                size: 60,
                color: Colors.blueAccent,
              ),
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Pharsesscreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
