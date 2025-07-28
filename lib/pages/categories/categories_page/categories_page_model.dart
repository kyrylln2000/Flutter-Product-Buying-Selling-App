import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/index.dart';
import 'categories_page_widget.dart' show CategoriesPageWidget;
import 'package:flutter/material.dart';

class CategoriesPageModel extends FlutterFlowModel<CategoriesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel1;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel2;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel3;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel4;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel5;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel6;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel7;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel8;
  // Model for CategorioesComponent component.
  late CategorioesComponentModel categorioesComponentModel9;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    categorioesComponentModel1 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel2 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel3 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel4 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel5 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel6 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel7 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel8 =
        createModel(context, () => CategorioesComponentModel());
    categorioesComponentModel9 =
        createModel(context, () => CategorioesComponentModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    categorioesComponentModel1.dispose();
    categorioesComponentModel2.dispose();
    categorioesComponentModel3.dispose();
    categorioesComponentModel4.dispose();
    categorioesComponentModel5.dispose();
    categorioesComponentModel6.dispose();
    categorioesComponentModel7.dispose();
    categorioesComponentModel8.dispose();
    categorioesComponentModel9.dispose();
  }
}
