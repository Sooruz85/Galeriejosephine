import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'artistspage_widget.dart' show ArtistspageWidget;
import 'package:flutter/material.dart';

class ArtistspageModel extends FlutterFlowModel<ArtistspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
