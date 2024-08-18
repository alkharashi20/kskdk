import 'package:flutter/material.dart';
import 'package:newsappbyme/apireq.dart';
import 'package:newsappbyme/itemtapbar.dart';
import 'package:newsappbyme/jsontoflutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const routeName= 'HomeScreen';
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<Jsontoflutter>(

      future: apireq.getdata(),
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Text('error');
        }
        var res = snapshot.data!.sources!;
       return tabaritem(dk:res,);

      },

    );
  }
}
