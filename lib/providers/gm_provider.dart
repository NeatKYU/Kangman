import 'package:flutter/material.dart';
import 'dart:math';

class GmProvider extends ChangeNotifier {
  List<String> _wordList = [];
  int _helthCount = 6;
  int _totalScore = 0;
  String _quizWord = '';

  void initData() {
    _wordList = [];
    _helthCount = 6;
    _totalScore = 0;
    _quizWord = generateWord(randomWordList);
    notifyListeners();
  }

  // 다음 스테이지 갔을 때 변수들 수정
  void nextStage() {
    _quizWord = generateWord(randomWordList);
    _totalScore++;
    notifyListeners();
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
  int get totalScore => _totalScore;
  String get quizWord => _quizWord;
}

List<String> randomWordList = [
  'away',
  'baby',
  'cute',
  'danger',
  'face',
  'hammer',
  'myth',
  'overnight',
  'custom',
  'eyebrow',
  'bar',
  'fatal',
  'commence',
  'breed',
  'knot',
  'swell',
  'temporary',
  'gulf',
];
// 랜덤 수 생성
int generateRandom(int range) {
  return Random().nextInt(range);
}

// 랜덤 단어 생성
String generateWord(List<String> wordList) {
  return wordList[generateRandom(wordList.length)];
}
