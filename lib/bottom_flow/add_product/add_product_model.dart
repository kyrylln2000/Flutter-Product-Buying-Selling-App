import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/center_appbar/center_appbar_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for CenterAppbar component.
  late CenterAppbarModel centerAppbarModel;
  bool isDataUploading_uploadData11 = false;
  FFUploadedFile uploadedLocalFile_uploadData11 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData22 = false;
  FFUploadedFile uploadedLocalFile_uploadData22 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData33 = false;
  FFUploadedFile uploadedLocalFile_uploadData33 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData44 = false;
  FFUploadedFile uploadedLocalFile_uploadData44 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData55 = false;
  FFUploadedFile uploadedLocalFile_uploadData55 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData66 = false;
  FFUploadedFile uploadedLocalFile_uploadData66 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData77 = false;
  FFUploadedFile uploadedLocalFile_uploadData77 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData88 = false;
  FFUploadedFile uploadedLocalFile_uploadData88 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData99 = false;
  FFUploadedFile uploadedLocalFile_uploadData99 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData10 = false;
  FFUploadedFile uploadedLocalFile_uploadData10 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid choose category';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid price';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid deal option remark';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid model no';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid enter ram';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid address';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    centerAppbarModel = createModel(context, () => CenterAppbarModel());
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
  }

  @override
  void dispose() {
    centerAppbarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();
  }
}
