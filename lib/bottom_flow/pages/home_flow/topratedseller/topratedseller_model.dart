import '/backend/schema/structs/index.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/bottom_flow/pages/components/topratedseller_com/topratedseller_com_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'topratedseller_widget.dart' show TopratedsellerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
