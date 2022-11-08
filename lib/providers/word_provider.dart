import 'package:flutter/material.dart';

class WordProvider extends ChangeNotifier {
  final List<String> _wordList = [];

  void setWordList(String alpabet) {
    _wordList.add(alpabet);
    notifyListeners();
  }

  List<String> get wordList => _wordList;
}
