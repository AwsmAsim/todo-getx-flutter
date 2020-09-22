import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter_get_todo/screens/home_page.dart';
import 'package:flutter_get_todo/screens/sign_in_page.dart';

class AuthController extends GetxController{

  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> firebaseUser = Rx<User>();
  Stream<User> get user =>_auth.authStateChanges();
  Future<User> get getUser async => _auth.currentUser;


  @override
  void onReady() async{
    ever(firebaseUser, handleAuthState);
    firebaseUser.value=await getUser;
    firebaseUser.bindStream(user);
    super.onInit();
  }

  handleAuthState(firebaseUser){
    if(firebaseUser!=null){
      Get.offAll(HomePage());
    }else{
      Get.offAll(SignUpScreen());
    }
  }

  Future signIn(String email, String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password)
      ;
    } on FirebaseAuthException catch(e){
      Get.snackbar('Cannot Log in', e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future signUp(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password)
      ;
    }on FirebaseAuthException catch(e){
      Get.snackbar('Cannot Sign up', e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future signOut() async{
      await _auth.signOut();
      Get.offAll(SignUpScreen());
  }

}