

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class DataBaseServices
{
  static Future<void>  addData(String title, String code) async {
     firebaseFirestore
         .collection('codes')
         .add({"title": title, "code": code})
         .whenComplete(()=>print("added sucessfully")).catchError((e)
    {
           print(e.toString());
    });

  }
  static Future<void> delete(String id)async{
    await firebaseFirestore.collection('codes').doc(id).delete();

  }
  static Future<void> updateData(String id, String title, String code) async
  {
    await firebaseFirestore.collection('codes').doc(id).update(
      {
        'title' : title,
        'code' : code,
      }
    );
  }
}