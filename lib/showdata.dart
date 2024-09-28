
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mycodesaver/add_page.dart';
import 'package:mycodesaver/edit_screen.dart';

import 'database_services.dart';

class ShowDataPage extends StatelessWidget {
  const ShowDataPage({super.key});
  navigation(BuildContext context, Widget next)
  {
     Navigator.push(context, MaterialPageRoute(builder: (_) => next));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigation(context, AddPage());
        },
        child: Icon(Icons.add),),


      body: StreamBuilder(
        stream: firebaseFirestore.collection('codes').snapshots(),
        builder: (context,AsyncSnapshot<QuerySnapshot> snapshot)
        {
          if(snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  final res = snapshot.data!.docs[index];
                  return Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      color: Colors.red,// or Icon(Icons.delete),
                    ),


                    onDismissed: (v){
                           DataBaseServices.delete(res.id);
                    },
                    child: Card(
                        child: ExpansionTile(
                            title: Text(
                                "${res['title']}",

                            ),

                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                             "Code :  ${res['code']}",
                           ),
                         )
                       ],
                       leading:
                       IconButton(onPressed: (){
                         navigation(context, EditScreenPage(
                           id: res.id,
                           titlec: res['title'],
                           codec: res['code'],
                         ));
                       }, icon : Icon(Icons.edit)),
                        )),
                  );
                });
          } else
            {
              return const Center(child: CircularProgressIndicator(
                color: Colors.pink,
              ),);
            }
          //ExpansionTile(title: Text("$snapshot.data!.docs"))
        },),
    );
  }
}
