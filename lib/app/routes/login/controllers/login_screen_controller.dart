part of '../login_screen.dart';

class LoginScreenController extends GetxController {
  String? user;
  String? password;

  login() {
    if (user == 'admin' && password == 'admin') {
      SetSession(SessionInMemory()).run(Session('Administrator', 7));
      Get.offAllNamed(AdminLayout.routeName);
    } else if (user == 'waiter' && password == 'waiter') {
      SetSession(SessionInMemory()).run(Session('Waiter', 2));
      Get.offAllNamed(WaiterLayout.routeName);
    } else {
      Get.showSnackbar(GetBar(
        title: 'Error',
        message: 'Usuario o contrase;a incorrecta',
      ));
    }
  }
}
