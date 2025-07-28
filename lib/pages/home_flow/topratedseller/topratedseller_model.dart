import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/pages/components/topratedseller_com/topratedseller_com_widget.dart';
import '/index.dart';
import 'topratedseller_widget.dart' show TopratedsellerWidget;
import 'package:flutter/material.dart';

class TopratedsellerModel extends FlutterFlowModel<TopratedsellerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Models for TopratedsellerCom dynamic component.
  late FlutterFlowDynamicModels<TopratedsellerComModel> topratedsellerComModels;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    topratedsellerComModels =
        FlutterFlowDynamicModels(() => TopratedsellerComModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    topratedsellerComModels.dispose();
  }
}
