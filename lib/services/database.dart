import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gpsclean/models/place.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  // collection reference
  final CollectionReference placeCollection = Firestore.instance.collection('places');

  Future updateUserData(String name,String lattitude,String longitude) async{
    return await placeCollection.document(uid).setData({
      'nom': name,
      'longitude':longitude,
      'latitude': lattitude
    });
  }

  // place list from snapshot
  List<Place> _placeListFromSnapshot(QuerySnapshot snapshot){
    List<Place> malist= List();
    for(var doc in snapshot.documents){
      Place p = Place(
          name: doc.data['nom'] ?? '',
          latitude: double.parse(doc.data['latitude']) ?? 0,
          longitude: double.parse(doc.data['longitude']) ?? 0
      );
      malist.add(p);
    }
    return malist;
  }


  // get brews stream
  Stream<List<Place>> get places {
    print('3');
    return placeCollection.snapshots()
    .map(_placeListFromSnapshot);
  }
  
}