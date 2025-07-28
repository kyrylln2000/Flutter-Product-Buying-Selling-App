import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/index.dart';
import 'phone_widget.dart' show PhoneWidget;
import 'package:flutter/material.dart';

class PhoneModel extends FlutterFlowModel<PhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Models for CategorioesComponent dynamic component.
  late FlutterFlowDynamicModels<CategorioesComponentModel>
      categorioesComponentModels;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    categorioesComponentModels =
        FlutterFlowDynamicModels(() => CategorioesComponentModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    categorioesComponentModels.dispose();
  }
}
