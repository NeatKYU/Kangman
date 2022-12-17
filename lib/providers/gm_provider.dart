import 'package:flutter/material.dart';
import 'dart:math';

class GmProvider extends ChangeNotifier {
  List<String> _wordSplitList = [];
  int _helthCount = 6;
  int _totalScore = 0;
  String _quizWord = '';

  void initData() {
    _wordSplitList = [];
    _helthCount = 6;
    _totalScore = 0;
    _quizWord = generateWord(randomWordList);
    notifyListeners();
  }

  // 다음 스테이지 갔을 때 변수들 수정
  void nextStage() {
    _quizWord = generateWord(randomWordList);
    _wordSplitList = [];
    _totalScore++;
    notifyListeners();
  }

  // 단어 맞췄는지 체크하는 함수
  bool correctWord(currentAlpabetList) {
    // List<String> quizWordSplitList = _quizWord.split('');
    String quizWord = _quizWord;
    // currentAlpabetList.map((alpabet) => {
    currentAlpabetList.forEach((alpabet) {
      if (quizWord.contains(alpabet)) {
        quizWord = quizWord.replaceAll(alpabet, '');
      }
    });
    if (quizWord.isEmpty) {
      // 다 맞춤
      return true;
    } else {
      // 아직 다 못맞춤
      return false;
    }
  }

  void setQuizWord(String word) {
    _quizWord = word;
    notifyListeners();
  }

  void setWordList(String alpabet) {
    if (!_wordSplitList.contains(alpabet)) {
      _wordSplitList.add(alpabet);
      notifyListeners();
    }
  }

  void downHelthCount() {
    if (_helthCount > 0) {
      _helthCount--;
      notifyListeners();
    }
  }

  List<String> get wordSplitList => _wordSplitList;
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
