import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selctedItems => _selectedItems;

  addItems(item) {
    _selectedItems.add(item);
    notifyListeners();
  }

  removeItems(item) {
    _selectedItems.remove(item);
    notifyListeners();
  }

  removeByValue(value) {
    _selectedItems.remove(value);
    notifyListeners();
  }
}
