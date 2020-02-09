import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firestore.dart' as fs;

final fs.Firestore firestore = fb.firestore();

void sendMessage(msg) {
  firestore.collection('messages').add({'text': msg});
}
