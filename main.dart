import 'dart:io';

import 'admin.dart';
import 'gost.dart';
import 'user.dart';

void main(List<String> args) {
  print("Adminga kirish -> a");
  print("Userga kirish -> u");
  print("Gostga kirish -> g");
  String symbol = stdin.readLineSync()!;
  if (symbol == "a") {
    Admin().adminprint();
  } else if (symbol == "u") {
    User().userprint();
  } else if (symbol == "g") {
    Gost().vazifalar();
  }
}
