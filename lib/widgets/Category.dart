import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text, required this.icon, required this.ontap});
  final String text;
  final Icon icon;
  Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: ontap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 220,
              height: 150,
              color: Color.fromARGB(255, 112, 132, 148),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  icon,
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
