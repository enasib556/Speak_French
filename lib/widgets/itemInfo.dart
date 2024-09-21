import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Iteminfo extends StatefulWidget {
  Iteminfo({super.key, required this.itemmodel});
  Itemmodel itemmodel;

  @override
  State<Iteminfo> createState() => _IteminfoState();
}

class _IteminfoState extends State<Iteminfo> {
  bool isplaying = false;
  void _playSound() {
    setState(() {
      isplaying = true;
    });
    widget.itemmodel.playsound();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isplaying = false; 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: isplaying?Colors.redAccent:Colors.transparent,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.itemmodel.frName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'comici',
                        fontSize: 18),
                  ),
                  Text(
                    widget.itemmodel.enName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'comici',
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: _playSound,
              icon:  Icon(
                isplaying?Icons.pause:Icons.play_arrow,
                color: 
                isplaying?Colors.grey:Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
