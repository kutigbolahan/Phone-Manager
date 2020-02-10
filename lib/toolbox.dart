import 'package:flutter/material.dart';

class ToolBox extends StatelessWidget {
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
                    Icons.games,
                    color: Colors.green,
                  ),
                  title: Text('Game mode'),
                  subtitle:
                      Text('improve game experience via system optimization'),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Practical functions', style: TextStyle(color:Colors.blue),),
                ),
                SizedBox(height: 10,),
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
                    Icons.games,
                    color: Colors.green,
                  ),
                  title: Text('Game mode'),
                  subtitle:
                      Text('improve game experience via system optimization'),
                ),
          ListTile(
                  leading: Icon(
                    Icons.games,
                    color: Colors.green,
                  ),
                  title: Text('Game mode'),
                  subtitle:
                      Text('improve game experience via system optimization'),
                ),
          ],
        ),
      ),
    );
  }
}