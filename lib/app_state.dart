import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _assetName = [
    'Tableau 1',
    'Tableau 2',
    'Tableau 3',
    'Tableau 4',
    'Tableau 15'
  ];
  List<String> get assetName => _assetName;
  set assetName(List<String> value) {
    _assetName = value;
  }

  void addToAssetName(String value) {
    assetName.add(value);
  }

  void removeFromAssetName(String value) {
    assetName.remove(value);
  }

  void removeAtIndexFromAssetName(int index) {
    assetName.removeAt(index);
  }

  void updateAssetNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    assetName[index] = updateFn(_assetName[index]);
  }

  void insertAtIndexInAssetName(int index, String value) {
    assetName.insert(index, value);
  }

  List<String> _text = [];
  List<String> get text => _text;
  set text(List<String> value) {
    _text = value;
  }

  void addToText(String value) {
    text.add(value);
  }

  void removeFromText(String value) {
    text.remove(value);
  }

  void removeAtIndexFromText(int index) {
    text.removeAt(index);
  }

  void updateTextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    text[index] = updateFn(_text[index]);
  }

  void insertAtIndexInText(int index, String value) {
    text.insert(index, value);
  }

  int _NavBAr = 1;
  int get NavBAr => _NavBAr;
  set NavBAr(int value) {
    _NavBAr = value;
  }
}
