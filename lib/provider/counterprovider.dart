import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _count=0;
  int get count{ 
    return _count;
  }
  void  increment(){
    _count++;
    notifyListeners();
  }
  void  substract(){
    _count--;
      notifyListeners();
  }
   void  reset(){
    _count=0;
      notifyListeners();
  }
}