import 'package:flutter/material.dart'; 

void main(){
  
  runApp(
    MaterialApp( 
      home: Scaffold(
        body: Screen()
      )
    )
  );
  
}  
 
class Screen extends StatelessWidget
{

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          child:TextField(
            controller: myController,
          )
        ),
        FloatingActionButton(
          child:Icon(Icons.print),
          onPressed: () => showDialog(
            context:context, 
            builder:(context) { 
              return AlertDialog(content: Text(myController.text));
            }
          )
        )
      ],
    );
    
  }
}