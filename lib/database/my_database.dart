import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/my_tester.dart';

class MyDataBase {
  static CollectionReference<MyTester> getTestersCollection() {
    return FirebaseFirestore.instance
        .collection(MyTester.collectioName)
        .withConverter<MyTester>(
            fromFirestore: (doc, _) => MyTester.fromFireStore(doc.data()!),
            toFirestore: (tester, options) => tester.toFireStore());
  }

  static Future<MyTester?> insertTester(MyTester tester) async {
    var collection = getTestersCollection();
    var res = await (await collection.add(tester)).get();
    return res.data();
  }
}
