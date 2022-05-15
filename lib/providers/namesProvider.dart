import 'package:flutter/cupertino.dart';

class NamesProvider with ChangeNotifier {
  List<String> names = [
    "Maaz",
    "Ammar",
    "Sakina",
    "Abdullah",
    "Shaheer",
    "Irtiza",
    "Hanzala",
    "Mujtaba",
    "Safeer",
    "Afshan"
  ];

  deleteItem(int index){
    names.removeAt(index);
    notifyListeners();
  }

  editItem(int index,String newName){
    names[index]=newName;
    notifyListeners();
  }
}
