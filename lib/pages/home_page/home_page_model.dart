import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> assetName = [
    'Hello World 1',
    'Hello World 2',
    'Hello World 3',
    'Hello World 4',
    'Hello World 5'
  ];
  void addToAssetName(String item) => assetName.add(item);
  void removeFromAssetName(String item) => assetName.remove(item);
  void removeAtIndexFromAssetName(int index) => assetName.removeAt(index);
  void insertAtIndexInAssetName(int index, String item) =>
      assetName.insert(index, item);
  void updateAssetNameAtIndex(int index, Function(String) updateFn) =>
      assetName[index] = updateFn(assetName[index]);

  List<String> text = ['T1', 'T2', 'T3', 'T4', 'T5'];
  void addToText(String item) => text.add(item);
  void removeFromText(String item) => text.remove(item);
  void removeAtIndexFromText(int index) => text.removeAt(index);
  void insertAtIndexInText(int index, String item) => text.insert(index, item);
  void updateTextAtIndex(int index, Function(String) updateFn) =>
      text[index] = updateFn(text[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
