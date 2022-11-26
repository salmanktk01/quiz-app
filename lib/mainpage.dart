import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controller.dart';
import 'package:quiz/result.dart';

class Mainpage extends StatelessWidget {
  final ques = Get.put(Question());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292D30),
      appBar: AppBar(
        backgroundColor: const Color(0xff4F9E73),
        title: const Text(
          "Quiz App",
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => (Center(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    color: Color(0xff7A85BE),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(80))),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        ques.questions[ques.index.value].que,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (() {
                            if (ques.answer[ques.index.value] ==
                                ques.questions[ques.index.value].opt1) {
                              ques.scoreicrt();
                            } else {
                              ques.scoredcrt();
                            }
                          }),
                          child: Container(
                            width: 250,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff757B89)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ques.questions[ques.index.value].opt1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            if (ques.answer[ques.index.value] ==
                                ques.questions[ques.index.value].opt2) {
                              ques.scoreicrt();
                            } else {
                              ques.scoredcrt();
                            }
                          },
                          child: Container(
                            width: 250,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff757B89)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ques.questions[ques.index.value].opt2,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: (() {
                            if (ques.answer[ques.index.value] ==
                                ques.questions[ques.index.value].opt3) {
                              ques.scoreicrt();
                            } else {
                              ques.scoredcrt();
                            }
                          }),
                          child: Container(
                            width: 250,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff757B89)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ques.questions[ques.index.value].opt3,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (ques.index.value == 3) {
                          Get.to(result());
                          ques.index = 0.obs;
                        } else {
                          ques.queicrt();
                        }
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
              Container(
                height: 150,
                decoration: const BoxDecoration(
                    color: Color(0xff4453A7),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(80))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
