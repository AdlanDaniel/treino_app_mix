import 'package:app_mix/app/modules/repositories/Models/Clients_model.dart';
import 'package:app_mix/app/modules/repositories/Models/User_model.dart';
import 'package:app_mix/app/modules/repositories/Models/adress_client.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';

abstract class SessionRepository {
  Future<void> registerUSer(UserModel userModel);
  Future<void> loginUser(UserModel userModel);
  Future<void> signOutUser();
  Future<User?> isUserLoaded();
  Future<void> registerClients(ClientsModel clientsModel);
  String getIdClients();
  Future<void> editClients(String id, ClientsModel clientsModel);

  Future<AdressClient?> getAdressAPI(AdressClient adressClient);
  Stream<QuerySnapshot<Map<String, dynamic>>> streamClients();
  Future<void> deleteClients(String id);
}
