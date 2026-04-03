import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServvicee {
  FirestoreServvicee._();

  static final instance = FirestoreServvicee._();

  FirebaseFirestore get = FirebaseFirestore.instance;

  Future<void> setdata({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final refeence = get.doc(path);

    await refeence.set(data);
  }

  Future<void> deletedata({required String path}) async {
    final refeence = get.doc(path);

    await refeence.delete();
  }
}
