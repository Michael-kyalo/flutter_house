import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterhouse/details_page.dart';

class Bodylist extends StatefulWidget {
  @override
  _BodylistState createState() => _BodylistState();
}

class _BodylistState extends State<Bodylist> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
          return DetailsPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: 250,
        height: 380,
        child: Stack(
          children: <Widget>[
            Container(
              width: 250,
              height: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                  image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1576897955702-24ad19680db3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                      fit: BoxFit.cover
                  )

              ),
            ),
            Positioned(
              bottom: 1.0,
              right: 1.0,
              child: FloatingActionButton(
                heroTag: null,
                onPressed: (){},
                backgroundColor: Colors.amberAccent,
                mini: true,
                child: Icon(
                    Icons.arrow_forward_ios
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Family House', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white,),
                      Text('54, RiverRoad', style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
