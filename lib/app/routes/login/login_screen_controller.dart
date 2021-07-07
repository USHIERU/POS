part of login_screen;

class LoginScreenController extends GetxController {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  login() {
    if (user.text == 'admin' && password.text == 'admin') {
      SetSession(POSConfig().factory.getSessionRepository)
          .run(Session('Administrator', 7));
      Get.offAllNamed(AdminScreen.routeName);
    } else if (user.text == 'waiter' && password.text == 'waiter') {
      SetSession(POSConfig().factory.getSessionRepository)
          .run(Session('Waiter', 2));
      Get.offAllNamed(WaiterScreen.routeName);
    } else {
      Get.showSnackbar(GetBar(
        title: 'Error',
        message: 'Usuario o contrase;a incorrecta',
      ));
    }
  }
}
