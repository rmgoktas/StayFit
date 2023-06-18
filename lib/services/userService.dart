import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stayfit_app/models/loginUser.dart';

class UserService {
  Future<List<UserModel>> getUsersData() async {
    List<UserModel> userList = [];

    try {
    
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').get();
      
      querySnapshot.docs.forEach((userDoc) {
        UserModel userData = UserModel(
          displayName: userDoc['displayName'],
          photoURL: userDoc['photoURL'],
          stepCount: userDoc['stepCount'],
        );
        userList.add(userData);
      });
    } catch (e) {
      print('Kullanıcı verilerini alma hatası: $e');
    }

    return userList;
  }
}
