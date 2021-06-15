import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage ({Key? key}) : super(key: key);

 @override
_HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{
int _contador=10;

@override 

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Incremento y decremento') ,
      
    ),
    body:
    Center(
      child: Text("$_contador",
      style: TextStyle(fontSize: 18.0),
      textScaleFactor: 2.5,
      maxLines: 3,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      ),
       ),
      floatingActionButton: Stack(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left:31),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
          onPressed: (){ setState(() {
          _contador=_contador+2;
          print("Contador $_contador");  
          });
        },
            child: Icon(Icons.add),),
        ),),

        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed:  (){ setState(() {
          _contador=_contador-3;
          print("Contador $_contador");  
          });
        },
          child: Icon(Icons.horizontal_rule_outlined),),
        ),
      ],
    )       
      

  );
}

}
