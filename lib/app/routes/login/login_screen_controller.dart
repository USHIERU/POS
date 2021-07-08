part of login_screen;

class LoginScreenController extends GetxController {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    GetUser(POSConfig().factory.getUserRepository)
        .run(user.text, password.text)
        .then((user) {
      SetSession(POSConfig().factory.getSessionRepository).run(Session(user));
      _goTo(user.permission);
    }).catchError((error) {
      Get.showSnackbar(GetBar(
        title: 'Error',
        message: 'Usuario o contrase;a incorrecta',
      ));
    });
  }

  void _goTo(Permissions permissions) {
    switch (permissions) {
      case Permissions.ADMIN:
        Get.offAllNamed(AdminScreen.routeName);
        break;
      case Permissions.WAITER:
        Get.offAllNamed(WaiterScreen.routeName);
        break;
      case Permissions.CASHIER:
        break;
    }
  }
}
