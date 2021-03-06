import 'package:flutter/material.dart';
import 'package:gpsclean/models/user.dart';
import 'package:gpsclean/screens/authentification/authenticate.dart';
import 'package:gpsclean/screens/home/home.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if(user==null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
