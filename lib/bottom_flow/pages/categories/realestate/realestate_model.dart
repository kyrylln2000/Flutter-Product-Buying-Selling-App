import '/bottom_flow/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'realestate_widget.dart' show RealestateWidget;
import 'package:flutter/material.dart';

class RealestateModel extends FlutterFlowModel<RealestateWidget> {
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
