import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonemaster/me.dart';

class ToolBox extends StatefulWidget {
  @override
  _ToolBoxState createState() => _ToolBoxState();
}

class _ToolBoxState extends State<ToolBox> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolBox'),
      ),
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Recommended functions', style: TextStyle(color:Colors.blue),),
          ),
          SizedBox(height: 10,),
          ListTile(
                  leading: Icon(
                    Icons.brush,
                    color: Colors.blue,
                  ),
                  title: Text('Deep Clean'),
                  subtitle:
                      Text('Clean up files deeply to release more space'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.red,
                  ),
                  title: Text('Notification Management'),
                  subtitle:
                      Text('Make messy notification bar fresh again'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.delete,
                    color: Colors.green,
                  ),
                  title: Text('Clean whatsapp'),
                  subtitle:
                      Text('Specific cleaning, clear more trash'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.filter_none,
                    color: Colors.green,
                  ),
                  title: Text('File Mover'),
                  subtitle:
                      Text('one-tap to move files to SD card'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.brightness_low,
                    color: Colors.blue,
                  ),
                  title: Text('CPU Cooler'),
                  subtitle:
                      Text('Overheating? Cool it down'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.alarm,
                    color: Colors.blue,
                  ),
                  title: Text('Auto-start Management'),
                  subtitle:
                      Text('Prevents unrelated apps being activated in the background'),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Practical functions', style: TextStyle(color:Colors.blue),),
                ),
                SizedBox(height: 10,),
                 ListTile(
                  leading: Icon(
                    Icons.pie_chart,
                    color: Colors.blue,
                  ),
                  title: Text('Data Manager'),
                  subtitle:
                      Text('Save data, save money'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.security,
                    color: Colors.blue,
                  ),
                  title: Text('harrasment Filter'),
                  subtitle:
                      Text('Away from harasment'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.teal,
                  ),
                  title: Text('App Lock'),
                  subtitle:
                      Text('Protect the privacy data and the property'),
                ),
                Divider(),
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
                    Icons.battery_charging_full,
                    color: Colors.green[300],
                  ),
                  title: Text('Smart Charge'),
                  subtitle:
                      Text('Remind you changing state to avoid overcharge'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.photo_library,
                    color: Colors.yellow[100],
                  ),
                  title: Text('Photo Cleaner'),
                  subtitle:
                      Text('Remove blurry photo to free up space'),
                ),
                Divider(),
          ListTile(
                  leading: Icon(
                    Icons.open_in_browser,
                    color: Colors.red,
                  ),
                  title: Text('Phoenix browser'),
                  subtitle:
                      Text('Download video files from video sharing sites'),
                      trailing: Text('sponsored'),
                ),
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