import 'package:flutter/material.dart';
import 'package:newsappbyme/jsontoflutter.dart';
import 'package:newsappbyme/tabitem.dart';

class tabaritem extends StatefulWidget {
   tabaritem({super.key,required this.dk});
   List <sourceee> dk ;

  @override
  State<tabaritem> createState() => _tabaritemState();
}

class _tabaritemState extends State<tabaritem> {

int SelectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            DefaultTabController(
      
                length: widget.dk.length, child: TabBar(
      
                onTap: (index){
                  SelectedIndex=index;
                  setState(() {
      
                  });
                },
                isScrollable: true
                ,
                tabs:
            widget.dk.map((source){
              return
                tabitem(source: source,
                  isSelected: SelectedIndex==widget.dk.indexOf(source)
                );
            }).toList())),
          ],
        ),
      ),
    );
  }
}
