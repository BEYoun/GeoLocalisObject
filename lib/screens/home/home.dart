import 'package:flutter/material.dart';
import 'package:gpsclean/services/auth.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async{
                await _auth.logout();
              },
              icon: Icon(Icons.person),
              label: Text('logout')
          )
        ],
      ),
    );
  }
}
