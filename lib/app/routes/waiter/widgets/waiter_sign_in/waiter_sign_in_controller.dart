part of waiter_sign_in;

class WaiterSignInController extends GetxController {
  RxString password = ''.obs;
  RxBool isWaiterSelected = false.obs;
  User? waiterSelected;
  RxList<User> waiters = RxList<User>.empty();

  WaiterSignInController() {
    _getUsers();
  }

  void selectWaiter(User waiter) {
    waiterSelected = waiter;
    isWaiterSelected.value = true;
  }

  void _getUsers() {
    GetUsers(POSConfig().factory.getUserRepository)
        .byPermission(Permissions.WAITER)
        .then((users) => waiters.value = users);
  }

  void addCharacter(String char) {
    password.value += char;
  }

  void deleteCharacter() {
    if (password.value.length <= 0) return;
    password.value = password.value.substring(0, password.value.length - 1);
  }

  void signIn() {
    if (waiterSelected == null) {
      print('<WaiterSignInController> User Null');
      return;
    }

    if (password.value == waiterSelected!.password) {
      Get.toNamed(CashRegisterScreen.routeName);
    }
  }
}
