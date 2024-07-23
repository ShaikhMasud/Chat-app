import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderId;
  final String senderEmail;
  final String recieverId;
  final String message;
  final Timestamp timestamp;
  Message(this.senderId, this.senderEmail, this.recieverId, this.message, this.timestamp);
  Map<String,dynamic> toMap(){
    return{
      'senderId':senderId,
      'senderEmail':senderEmail,
      'recieverId':recieverId,
      'message': message,
      'timestamp':timestamp,
    };
  }
}