import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/itemInfo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pharses extends StatelessWidget {
  Pharses({super.key,required this.phrases});
  Itemmodel phrases;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Iteminfo(itemmodel: phrases ),
    );
  }
}