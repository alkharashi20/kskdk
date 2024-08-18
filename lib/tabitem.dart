import 'package:flutter/material.dart';
import 'package:newsappbyme/jsontoflutter.dart';

class tabitem extends StatelessWidget {
   tabitem({super.key, required this.source,required this.isSelected});
  sourceee source;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected? Colors.blue : Colors.green
      ),
      child: Text(source.name??"sd"),
    );
  }
}
