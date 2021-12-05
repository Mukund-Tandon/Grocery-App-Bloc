import 'package:flutter/foundation.dart';
import 'dart:collection';
class drawer_animation_data extends ChangeNotifier {
  double xOffset =0;
  double yOffset =0;
  double scalefactor =1;

  void drawer_on()
  {
    xOffset =250;
    yOffset =150;
    scalefactor =.7;
    notifyListeners();
  }
  void drawer_off()
  {
    xOffset =0;
    yOffset =0;
    scalefactor = 1;
    notifyListeners();
  }
}