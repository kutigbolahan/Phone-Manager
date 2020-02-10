import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonemaster/me.dart';
import 'package:phonemaster/toolbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Phone Master',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 500,
              height: 200,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  // Image.asset(null),
                  Text(
                    'Set cellular plan to control your mobile data',
                    style: TextStyle(color: Colors.white),
                  ),
                  RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: null,
                      child: Text(
                        'SET NOW',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.restore_from_trash,
                          color: Colors.blue,
                        ),
                        Text('Junk Files'),
                        SizedBox(height: 40),
                        Icon(Icons.data_usage, color: Colors.blue),
                        Text('Data Manager'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.brightness_low, color: Colors.blue),
                        Text('Cpu Cooler'),
                        SizedBox(height: 40),
                        Icon(Icons.battery_charging_full, color: Colors.blue),
                        Text('Power Saving'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.phone_android, color: Colors.blue),
                        Text('Phone Boost'),
                        SizedBox(height: 40),
                        Icon(Icons.lock, color: Colors.blue),
                        Text('App Lock'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.games,
                    color: Colors.green,
                  ),
                  title: Text('Game mode'),
                  subtitle:
                      Text('improve game experience via system optimization'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.brush,
                    color: Colors.blue,
                  ),
                  title: Text('Deep Clean'),
                  subtitle: Text('Clean up files deeply to release more space'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.delete,
                    color: Colors.green,
                  ),
                  title: Text('Clean WhatsApp'),
                  subtitle: Text('Delete useless files in WhatsApp'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.filter_none,
                    color: Colors.yellow,
                  ),
                  title: Text('File mover'),
                  subtitle: Text('One-tap to move files to SD card'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.apps,
                    color: Colors.green,
                  ),
                  title: Text('App Management'),
                  subtitle: Text('Manage your software efficiently'),
                ),
               
              ],
            )
          ],
          
        ),
        
      ),
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          activeColor: Colors.blue,
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
