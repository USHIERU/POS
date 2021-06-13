part of '../login_screen.dart';

class LoginScreenController extends GetxController {
  String? user;
  String? password;

  login() {
    if (user == 'admin' && password == 'admin') {
      SetSession(SessionInMemory()).run(Session('Administrator', 7));
      Get.offAllNamed(HomeLayout.routeName);
    } else {
      Get.showSnackbar(GetBar(
        title: 'Error',
        message: 'Usuario o contrase;a incorrecta',
      ));
    }
  }
}
