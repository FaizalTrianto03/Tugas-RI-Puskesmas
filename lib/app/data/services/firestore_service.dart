import 'package:cloud_firestore/cloud_firestore.dart';

/// Simple wrapper service for Firestore CRUD operations.
/// Use dependency injection or a GetX service binding as you prefer.
class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Add a document to [collection], returns the created DocumentReference
  Future<DocumentReference> add(String collection, Map<String, dynamic> data) {
    return _db.collection(collection).add(data);
  }

  // Get a document by id
  Future<DocumentSnapshot> get(String collection, String id) {
    return _db.collection(collection).doc(id).get();
  }

  // Update a document
  Future<void> update(String collection, String id, Map<String, dynamic> data) {
    return _db.collection(collection).doc(id).update(data);
  }

  // Delete a document
  Future<void> delete(String collection, String id) {
    return _db.collection(collection).doc(id).delete();
  }

  // Stream a collection
  Stream<QuerySnapshot> streamCollection(String collection) {
    return _db.collection(collection).snapshots();
  }
}
