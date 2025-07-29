import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'terms_condition_page_widget.dart' show TermsConditionPageWidget;
import 'package:flutter/material.dart';

class TermsConditionPageModel
    extends FlutterFlowModel<TermsConditionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
  }
}
