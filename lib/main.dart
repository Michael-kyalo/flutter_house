import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_list.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
)
);
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, right: 5.0, left: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                       text: TextSpan(
                         text: 'Howdy', style: TextStyle(
                         color: Colors.grey[600],
                         fontSize: 15
                       ),
                         children: <TextSpan>[
                           TextSpan(text: ' Macell',
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold
                             )
                           )
                         ]

                       ),
                        ),
                        Container(

                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('Suitable Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),),
                    SizedBox(height: 5.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                              color: Colors.deepPurple[200]
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.deepPurple[800],
                                ),
                                hintText: 'Find a good home',
                                hintStyle: TextStyle(
                                  color: Colors.deepPurple[800]
                                ),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Stack(
                          children: <Widget>[
                            Icon(Icons.notifications_none, color: Colors.deepPurpleAccent,),
                            Positioned(child:
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent,
                                    shape: BoxShape.circle
                                  ),
                                    child: Text('2',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.white
                                    ),)),
                              right: 1.0,
                              top: 1.0,
                            ),
                         
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),

                    Container(
                      height: 380,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Bodylist(),
                          Bodylist(),
                          Bodylist(),
                          Bodylist(),
                        ],
                      ),
                    )


                  ],

                ),
              ),

            ),


          )

      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            index == 1 ? _selected(Icons.home, 'home'):IconButton(icon: Icon(Icons.home), onPressed: (){
              setState(() {
                index = 1;
              });
            },),
            index==2? _selected(Icons.bookmark_border, 'bookmarks') :IconButton(icon: Icon(Icons.bookmark_border),
            onPressed: (){
              setState(() {
                index=2;
              });
            },),
           index ==3? _selected(Icons.chat_bubble_outline,'chats'): IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed:(){
              setState(() {
                index=3;
              });
            },),
           index==4 ? _selected(Icons.perm_identity,'profile') : IconButton(icon: Icon(Icons.perm_identity), onPressed: (){
             
              index = 4;
            },)

          ],
        ),
      ),
    );
  }
}
Widget _selected(icon,String string){
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
        color: Colors.deepPurple.withOpacity(0.4)

    ),
    child: Row(
      children: <Widget>[
        Icon(icon),
        Text(string)
      ],
    ),
  );
}

