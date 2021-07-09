part of waiter_sign_in;

class WaiterSignInController extends GetxController {
  RxString password = ''.obs;
  RxBool isWaiterSelected = false.obs;
  Context.User? waiterSelected;
  RxList<Context.User> waiters = RxList<Context.User>.empty();

  WaiterSignInController() {
    _getUsers();
  }

  void selectWaiter(Context.User waiter) {
    waiterSelected = waiter;
    isWaiterSelected.value = true;
  }

  void _getUsers() {
    Context.GetUsers(POSConfig().factory.getUserRepository)
        .byPermission(Context.Permissions.WAITER)
        .then((users) => waiters.value = users);
  }

  void addCharacter(String char) {
    if(password.value.length == 4) return;
    password.value += char;
  }

  void deleteCharacter() {
    if (password.value.length <= 0) {
      isWaiterSelected.value = false;
      return;
    }
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
