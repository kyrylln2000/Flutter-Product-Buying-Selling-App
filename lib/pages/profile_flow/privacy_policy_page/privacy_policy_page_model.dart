import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import 'privacy_policy_page_widget.dart' show PrivacyPolicyPageWidget;
import 'package:flutter/material.dart';

class PrivacyPolicyPageModel extends FlutterFlowModel<PrivacyPolicyPageWidget> {
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
