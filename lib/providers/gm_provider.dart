import 'package:flutter/material.dart';

class GmProvider extends ChangeNotifier {
  List<String> _wordList = [];
  int _helthCount = 6;
  String _quizWord = '';

  void initData() {
    _wordList = [];
    _helthCount = 6;
    _quizWord = 'test';
  }

  void setQuizWord(String word) {
    _quizWord = word;
    notifyListeners();
  }

  void setWordList(String alpabet) {
    if (!_wordList.contains(alpabet)) {
      _wordList.add(alpabet);
      notifyListeners();
    }
  }

  void downHelthCount() {
    if (_helthCount > 0) {
      _helthCount--;
      notifyListeners();
    }
  }

  List<String> get wordList => _wordList;
  int get helthCount => _helthCount;
  String get quizWord => _quizWord;
}
