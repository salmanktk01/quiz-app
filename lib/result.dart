import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controller.dart';
import 'package:quiz/startquiz.dart';

class result extends StatelessWidget {
  final quest = Get.put(Question());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292D30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Score is ",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              '${quest.score}',
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      quest.score = 0.obs;
                      Get.to(Startquiz());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE8F7F7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Answer submit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
