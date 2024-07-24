import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/app/app_routes.dart';

class LoginController extends GetxController {
  final RxBool headerSelect = true.obs;
  final RxBool checkBoxSelect = false.obs;

  FirebaseAuth auth = FirebaseAuth.instance;

  var formKey = GlobalKey<FormState>().obs;

  final cpf = TextEditingController().obs;
  final password = TextEditingController().obs;

  void setHeader(bool value) {
    headerSelect.value = value;
  }

  void setCheckBox(bool? value) {
    checkBoxSelect.value = !checkBoxSelect.value;
  }

  Future<void> login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: cpf.value.text, password: password.value.text);

      if (userCredential.user != null) {
        Modular.to
            .pushNamedAndRemoveUntil(AppRoutes.home, ModalRoute.withName('/'));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {}
    }
  }
}
