import 'dart:io';

class User {
  String? login;
  String? parol;
  String? kirish;
  String? sybol;
  List<String> jurnal = [];

  void userprint() {
    print("User");
    int i = 3;
    while (i > 0) {
      print("LOGIN: ****");
      login = stdin.readLineSync();
      if (login == "user") {
        print("To'gri");
        print("PAROL: ****");
        parol = stdin.readLineSync();
        if (parol == "user") {
          vazifalar();
          break;
        } else {
          i--;
          print("Parol No To'g'ri. Iltmos qaytadan kiriting");
          print("Sizda $i imkoniyatingiz qoldi");
        }
      } else {
        i--;
        print("Login No To'gri. Iltmos qaytadan kiriting");
        print("Sizda $i imkoniyatingiz qoldi");
      }
    }
  }

  void vazifalar() {
    print("Tizimga hush kelibsiz");
    int j = 0;
    while (j == 0) {
      //Kompyuterga kirirish: kompyuter
      print("\nKompyuterga kirirish: kompyuter");
      print("WiFi ga ulanish: wifi");
      print("Korzinkaga kirish: korzinka");
      print("Istoriyani korish: jurnal");
      print("chiqish: exit");
      sybol = stdin.readLineSync();
      if (sybol == "kompyuter") {
        print("\nC diskga kirish: c");
        print("D diskga kirirish: d");
        kirish = stdin.readLineSync();
        if (kirish == "c") {
          print("\nC diskga kirdingiz");
          jurnal.add("C disk");
        } else if (kirish == "d") {
          print("\nD diskga kirdingiz");
          jurnal.add("D disk");
        }
      } // WiFi ga ulanish
      else if (sybol == "wifi") {
        print("\nWiFiga ulandingiz");
        jurnal.add("Wifi");
      } else if (sybol == "korzinka") {
        print("\nKorzinkaga hush kelibsiz");
        jurnal.add("Korzinka");
      } else if (sybol == "jurnal") {
        print("\nKirilgan Istoriya: $jurnal");
      } else if (sybol == "exit") {
        print("\nSalomat bo'ling");
        j++;
      }
    }
  }
}
