// ignore: file_names
import 'package:SpeakFrench/Models/itemModel.dart';
import 'package:SpeakFrench/widgets/itemInfo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listitem extends StatelessWidget {
  Listitem({super.key, required this.itemmodel});
  Itemmodel itemmodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Image(image: AssetImage(itemmodel.image!)),
          Iteminfo(itemmodel: itemmodel),
        ],
      ),
    );
  }
}
