import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

void sendMessage(msg) {
  databaseReference.collection('messages').add({'msg': msg});
}
