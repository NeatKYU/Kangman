import 'package:flutter/material.dart';

class GmProvider extends ChangeNotifier {
  List<String> _wordList = [];
  int _helthCount = 5;

  void initData() {
    _wordList = [];
    _helthCount = 5;
  }

  void setWordList(String alpabet) {
    if (!_wordList.contains(alpabet)) {
      _wordList.add(alpabet);
      notifyListeners();
    }
  }

  void downHelthCount() {
    _helthCount--;
    notifyListeners();
  }

  List<String> get wordList => _wordList;
  int get helthCount => _helthCount;
}
