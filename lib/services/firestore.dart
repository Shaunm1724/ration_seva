import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreDataBase {
  final _db = FirebaseFirestore.instance;
  late CollectionReference orderCollection, itemsCollection, vendorsCollection;
  // final userid = FirebaseAuth.instance.currentUser.uid;
  FireStoreDataBase() {
    orderCollection = _db.collection('/Orders');
    vendorsCollection = _db.collection('/Vendor');
    itemsCollection = _db.collection('/Items');
  }
  Future<QuerySnapshot> getOrders() async {
  try {
    // Use await to wait for the result of the query
    QuerySnapshot querySnapshot = await orderCollection
        .where('User', isEqualTo: FirebaseAuth.instance.currentUser?.uid)
        .get();
    
    // Print success message
    print('Success');
    
    // Return the QuerySnapshot
    return querySnapshot;
  } catch (error) {
    // Handle any errors
    print('Error fetching orders: $error');
    // Return an empty QuerySnapshot or throw the error
    throw error;
  }
}
}