import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonemaster/toolbox.dart';

class Me extends StatefulWidget {
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 500,
              color: Colors.indigo[600],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Container(
                     width: 170,
                     height: 170,
                     child: Image.asset('assets/images/shield.png', fit: BoxFit.contain,)),
                 SizedBox(height: 10,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.feedback, color: Colors.indigo[300],),
                  SizedBox(width:20),
                  Text('Feedback')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.file_upload, color: Colors.greenAccent[300],),
                  SizedBox(width:20),
                  Text('Upgrade')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.link, color: Colors.red,),
                  SizedBox(width:20),
                  Text('Like us on Facebook')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.settings, color: Colors.grey[400],),
                  SizedBox(width:20),
                  Text('Settings')
                ],
              ),
            ),
            SizedBox(height: 150,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
             Text('HIOS powered by Einstein AI Engine')
              ],
            )
          ],
        ),
      ),
       bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentTab,
          onTap: (int index) {
            setState(() {
              _currentTab = index;
            });
          },
          activeColor: Colors.indigo[600],
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                 
                  child: Icon(Icons.home,size: 25, )), title: Text('Home')),
            BottomNavigationBarItem(
                icon: GestureDetector(
                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ToolBox())),
                  child: Icon(Icons.pan_tool,size: 25,)), title: Text('Toolbox')),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  
                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Me())),
                  child: Icon(Icons.person,size: 25,)), title: Text('Me')),
          ]),
    );
  }
}