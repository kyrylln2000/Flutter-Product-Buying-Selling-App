// ignore_for_file: non_constant_identifier_names

import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:flutter/material.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  bool isDataUploading_uploadData4hh = false;
  FFUploadedFile uploadedLocalFile_uploadData4hh =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData1 = false;
  FFUploadedFile uploadedLocalFile_uploadData1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData2 = false;
  FFUploadedFile uploadedLocalFile_uploadData2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData3 = false;
  FFUploadedFile uploadedLocalFile_uploadData3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData4 = false;
  FFUploadedFile uploadedLocalFile_uploadData4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData5 = false;
  FFUploadedFile uploadedLocalFile_uploadData5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData6 = false;
  FFUploadedFile uploadedLocalFile_uploadData6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData7 = false;
  FFUploadedFile uploadedLocalFile_uploadData7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData8 = false;
  FFUploadedFile uploadedLocalFile_uploadData8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadData9 = false;
  FFUploadedFile uploadedLocalFile_uploadData9 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
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
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
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

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
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
