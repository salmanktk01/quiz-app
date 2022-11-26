import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/model.dart';

class Question extends GetxController {
  RxInt index = 0.obs;
  RxInt score = 0.obs;
  List<Model> questions = [
    Model("Who is the founder of pakistan?", "Quaid jani", "mastri jani", "Me"),
    Model("Who is the Hottest person Alive?", "salman", "opt1", "both"),
    Model("Maldives is made of __ toll Island?", "26 tolls", "25", "her heart"),
    Model("mine wishes?", "ferrai car", "maldives tour", "both"),
    Model("", "", "", ""),
  ];
  List<String> answer = [
    "mastri jani",
    "both",
    "her heart",
    "both",
    "",
  ];

  void queicrt() {
    index++;
  }

  void scoreicrt() {
    score++;
  }

  void scoredcrt() {
    score--;
  }
}
