import 'package:flutter/material.dart';
import 'package:gpsclean/models/place.dart';
import 'package:gpsclean/shared/map.dart';


class PlaceTile extends StatelessWidget {
  final Place place;
  PlaceTile({this.place});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[100],
          ),
          title: Text(place.name),
          subtitle: Text("x: ${place.latitude} y: ${place.longitude}"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GMap(x:37.76493, y:-122.42432)),
            );
          },
        ),
      ),
    );
  }
}

