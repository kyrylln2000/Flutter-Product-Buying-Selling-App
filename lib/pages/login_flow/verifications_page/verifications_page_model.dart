import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/index.dart';
import 'verifications_page_widget.dart' show VerificationsPageWidget;
import 'package:flutter/material.dart';

class VerificationsPageModel extends FlutterFlowModel<VerificationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter valid OTP';
    }
    if (val.length < 6) {
      return 'Requires 6 characters.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    pinCodeController = TextEditingController();
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
