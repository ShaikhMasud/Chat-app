import 'package:chat_app/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ChatService extends ChangeNotifier{
  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  final FirebaseFirestore _fireStore =FirebaseFirestore.instance;
  
  Future<void> sendMessage(String recieverId,String message) async {
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp =Timestamp.now();

    Message newMessage =Message(currentUserId, currentUserEmail, recieverId, message, timestamp);

    List<String> ids =[currentUserId,recieverId];
    ids.sort();
    String chatRommId = ids.join("_");

    await _fireStore.collection("chat_rooms").doc(chatRommId).collection("messages").add(newMessage.toMap());
  }
  Stream<QuerySnapshot> getMessage (String userId,String otherUserId){
    List<String> ids =[userId,otherUserId];
    ids.sort();
    String chatRommId = ids.join("_");
    return _fireStore.collection("chat_rooms").doc(chatRommId).collection("messages").orderBy('timestamp',descending: false).snapshots();
  }
}