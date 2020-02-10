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
      debugShowCheckedModeBanner: false,
      title: 'Phone Manager',
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
  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Text(
          'Phone Manager',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: <Widget>[
            Container(
              width: 500,
              height: 250,
              color: Colors.indigo[600],
              child: Column(
                children: <Widget>[
                   Container(
                     width: 120,
                     height: 120,
                     child: Image.asset('assets/images/password.png', fit: BoxFit.contain,)),
                 SizedBox(height: 10,),
                  Text(
                    'Set cellular plan to control your mobile data',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: null,
                      child: Text(
                        'SET NOW',
                        style: TextStyle(color: Colors.white),
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
                          color: Colors.indigo[600],
                        ),
                        Text('Junk Files'),
                        SizedBox(height: 40),
                        Icon(Icons.data_usage, color:Colors.indigo[600]),
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
                        Icon(Icons.brightness_low, color: Colors.indigo[600]),
                        Text('Cpu Cooler'),
                        SizedBox(height: 40),
                        Icon(Icons.battery_charging_full, color: Colors.indigo[600]),
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
                        Icon(Icons.phone_android, color: Colors.indigo[600]),
                        Text('Phone Boost'),
                        SizedBox(height: 40),
                        Icon(Icons.lock, color: Colors.indigo[600]),
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
          currentIndex: _currentTab,
          onTap: (int index) {
            setState(() {
              _currentTab = index;
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
