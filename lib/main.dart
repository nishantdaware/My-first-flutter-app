import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ninjacard() ,
));

class Ninjacard extends StatefulWidget {
  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel = ninjalevel + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.jpg'),
                radius: 70.0,
              ),
            ),

            SizedBox(height: 50.0,),

            Text(
              "Name", style: TextStyle(
              letterSpacing: 1.5,
            )
            ),

            SizedBox(height: 10.0,),

            Text(
              "Hatsumi Masaaki", style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 20,
              color: Colors.red
            ),
            ),

            SizedBox(height: 30.0,),

            Text(
              "Current Ninja Level", style: TextStyle(
              letterSpacing: 1.5,
          )
          ),

            SizedBox(height: 10.0,),

            Text(
              "$ninjalevel", style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 20,
                color: Colors.red
            ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.red[600],
                ),

                SizedBox(width: 10.0,),

                Text("G-mail",style: TextStyle(
                  letterSpacing: 1.5,
                ),)
              ],
            ),
            SizedBox(height: 10.0,),

            Text('hmasaaki555@gmail.com',
              style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 15,
              color: Colors.red))
          ],
        ),
      ),
    );
  }
}



