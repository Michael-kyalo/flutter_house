import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(child: Image.network("https://images.unsplash.com/photo-1576897955702-24ad19680db3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80", fit: BoxFit.cover,),
            height: height*0.4,
            width: width,),
            Container(
              margin: EdgeInsets.only(top: height*0.3),

              child: Material(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 10, bottom: 30),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$4,999", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple
                          ),),
                          Icon(
                            Icons.bookmark_border, color: Colors.deepPurple,
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Family Home',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.hot_tub,size: 15, color: Colors.grey,),
                              Text('2'),
                              Icon(Icons.event_seat,size: 15, color: Colors.grey),
                              Text('2'),
                              Icon(Icons.airline_seat_individual_suite,size: 15, color: Colors.grey),
                              Text('3'),
                            ],
                          ),
                          Text('12,000 sq.ft')
                        ],
                      ),

                      Divider(
                    thickness: 1,
                      ),
                      Text('Home Loan Calculator', style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]
                      ),),
                      SizedBox(
                        height: 5,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('\$1,602/month'),
                        Icon(Icons.help,color: Colors.deepPurple,)
                      ],),
                      SizedBox(height: 30.0,),
                      Text('Your Home Loan' ,style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]

                      ),),
                      SizedBox(height: 5.0,),
                      Text('Apply for conditional approval'),
                      SizedBox(height: 5.0,),
                      Container(

                          child: Image.network("https://images.unsplash.com/photo-1569336415962-a4bd9f69cd83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80", fit: BoxFit.fitHeight,)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft:Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
                              ),
                              color: Colors.deepPurple.withOpacity(0.2)
                            ),
                            padding: EdgeInsets.all(20),
                            child: Text('Ask a Question', style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.deepPurple[800]
                            ),),
                          ),
                          Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft:Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
                                ),
                                color: Colors.deepPurple
                            ),
                            padding: EdgeInsets.all(20),
                            child: Text('Express Interest', style: TextStyle(
                              letterSpacing: 1.5,
                                color: Colors.white
                            ),),
                          )
                        ],
                      )

                    ],



                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
