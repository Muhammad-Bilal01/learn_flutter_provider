import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _slider = 1.0;

  double get slider => _slider;

  setSlider(slide) {
    _slider = slide;
    notifyListeners();
  }
}
