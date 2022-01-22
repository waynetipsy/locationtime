import 'package:flutter/material.dart';

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map Data = {};

  @override
  Widget build(BuildContext context) {

  final data = Data.isNotEmpty ? Data : ModalRoute.of(context)!.settings.arguments;
  
  print(data);
    
    // set background
    String bgImage = (data as dynamic)['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo;
    
    return Scaffold(
         backgroundColor: bgColor,
       body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
              ),
             ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                    children: <Widget> [
                  TextButton.icon(
              onPressed: ()  async { 
         dynamic result = await Navigator.pushNamed(context, '/location');  //A function
              setState(() {
              });    
                   }, 
                    icon: Icon(Icons.edit_location,
                    color: Colors.grey[300],
                    ), 
                    label: Text(
                      'edit location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                    ),
                    ),
           SizedBox(height: 20,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget> [
                Text(
              (data as dynamic) 
                ['location'],
              style: TextStyle(
                    fontSize: 28.0,
                letterSpacing: 2.0,
                color: Colors.white,

                   ),
                  ) 
                  ]
                 ),
              SizedBox(height: 20.0),
                Text(
                (data as dynamic)['time'],
                style: TextStyle(
                fontSize: 66.0,
             color: Colors.white,
              ),  
            )   
           ]
          ),
        ),
       ),
     )
    );
  }
}