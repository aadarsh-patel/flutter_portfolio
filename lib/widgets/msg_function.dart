import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firestore.dart' as fs;
import 'package:intl/intl.dart';

final fs.Firestore firestore = fb.firestore();

void sendMessage(name, msg) {
  var now = new DateTime.now();
  var dateFormat = DateFormat("dd-MM-yyyy hh:mm:ss").format(now);
  firestore.collection("messages").add({
    'Date': dateFormat,
    'Msg': msg,
    'Name': name,
  });
}

// firestore.collection("messages").doc("yLJFN8yPvifsObPOZpOe").update(data: {
//    Date': dateFormat,
//   'Msg': msg,
//    Name': name,
// });
