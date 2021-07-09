library waiter_sign_in;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/routes/cash_register/cash_register_screen.dart';
import 'package:context/context.dart' as Context;

part './waiter_sign_in_controller.dart';

class WaiterSignIn extends GetResponsiveView<WaiterSignInController> {
  final void Function() onCloseWaiterSignIn;

  WaiterSignIn({required this.onCloseWaiterSignIn});

  @override
  Widget? desktop() {
    return Stack(
      children: [
        GestureDetector(
          onTap: onCloseWaiterSignIn,
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 550,
            width: 350,
            child: Card(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Obx(
                  () => controller.isWaiterSelected.value
                      ? numberPad()
                      : waiterList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget waiterList() => ListView(
        children: List.generate(
          controller.waiters.length,
          (index) {
            var waiter = controller.waiters[index];
            return ListTile(
              onTap: () => controller.selectWaiter(waiter),
              title: Text(waiter.name),
            );
          },
        ),
      );

  Widget numberPad() => Column(
        children: [
          Expanded(
            flex: 2,
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  controller.password.value.length,
                  (index) => ClipOval(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('1'),
                          child: Text('1'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('2'),
                          child: Text('2'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('3'),
                          child: Text('3'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('4'),
                          child: Text('4'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('5'),
                          child: Text('5'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('6'),
                          child: Text('6'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('7'),
                          child: Text('7'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('8'),
                          child: Text('8'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('9'),
                          child: Text('9'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: controller.deleteCharacter,
                          child: Icon(Icons.arrow_back_ios_new),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.addCharacter('0'),
                          child: Text('0'),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: controller.signIn,
                          child: Icon(Icons.arrow_forward_ios),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue,
                            onPrimary: Colors.blue.shade300,
                            minimumSize: Size(80, 80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
}
