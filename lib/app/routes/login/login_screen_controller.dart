part of login_screen;

class LoginScreenController extends GetxController {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    Context.GetUser(POSConfig().factory.getUserRepository)
        .run(user.text, password.text)
        .then((user) {
      Context.SetSession(POSConfig().factory.getSessionRepository).run(Context.Session(user));
      _goTo(user.permission);
    }).catchError((error) {
      Get.showSnackbar(GetBar(
        title: 'Error',
        message: 'Usuario o contrase;a incorrecta',
      ));
    });
  }

  void _goTo(Context.Permissions permissions) {
    switch (permissions) {
      case Context.Permissions.ADMIN:
        Get.offAllNamed(AdminScreen.routeName);
        break;
      case Context.Permissions.WAITER:
        Get.offAllNamed(WaiterScreen.routeName);
        break;
      case Context.Permissions.CASHIER:
        break;
    }
  }
}
