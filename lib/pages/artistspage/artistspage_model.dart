import '/flutter_flow/flutter_flow_util.dart';
import 'artistspage_widget.dart' show ArtistspageWidget;
import 'package:flutter/material.dart';

class ArtistspageModel extends FlutterFlowModel<ArtistspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
