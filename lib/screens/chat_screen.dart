import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatScreen extends StatelessWidget {
  
  // Future<DocumentSnapshot> getData() async {
  //   await Firebase.initializeApp();
  //   return await FirebaseFirestore.instance
  //       .collection('/chats/mwgqwGU8hDhwV7BibxmK/messages')
  //       .snapshots().listen((event) {

  //        });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Chat Display")
        ),
      body: StreamBuilder(
        stream:  FirebaseFirestore.instance.collection('/chats/mwgqwGU8hDhwV7BibxmK/messages')
          .snapshots(),
        builder: (ctx, streamSnapshot) {
             return ListView.builder(
        itemCount: streamSnapshot.,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(8),
          child: Text("This works1"),
        ),
      );}
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      )
    );
  }
}