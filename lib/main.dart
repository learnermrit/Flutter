import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MritCard(),
  ));
}
  class MritCard extends StatefulWidget {
  @override
  State<MritCard> createState() => _MritCardState();
}

class _MritCardState extends State<MritCard> {
  int counter=0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Mrit Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

        ),
        floatingActionButton:FloatingActionButton (
        onPressed: (){
          setState((){
             counter+=1;
          });
        },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                   backgroundImage: AssetImage('assets/mrit.jpg'),
                   radius: 40.0,
                ),
              ),
              Divider(
                height: 80.0,
                color: Colors.white,
              ),
              Text(
                  'NAME',

                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
              ),
             SizedBox(height: 10.0,),
              Text(
                'Mrityunjay Kumar',

                style: TextStyle(
                  color: Colors.grey[700],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                 // fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(height: 30.0,),
              Text(
                'College ID',

                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                '2021PGCACA005',

                style: TextStyle(
                  color: Colors.grey[700],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(height: 30.0,),

              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 30.0,),
                  Text(
                      '2021pgcaca005@nitjsr.ac.in',
                     style: TextStyle(
                       color: Colors.grey[400]
                     ),
                  )

                ],
              ),
              SizedBox(height: 10.0,),
              Text(
                'Counter',

                style: TextStyle(
               color: Colors.grey,
              letterSpacing: 2.0,
                )
              ),
              SizedBox(height: 10.0,),
              Text(
                '$counter',

                style: TextStyle(
                  color: Colors.yellowAccent[700],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold

                ),
              ),

            ],
          ),
        ),
      );
    }
}



