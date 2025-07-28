import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
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

  // Image upload fields (keeping all existing ones)
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

  // DYNAMIC DROPDOWN DATA
  List<dynamic> categories = [];
  List<dynamic> dealOptions = [];

  // Loading states
  bool isCategoriesLoading = false;
  bool isDealOptionsLoading = false;

  // Selected values (store IDs)
  String? selectedCategoryId;
  String? selectedDealOptionId;

  // API responses
  ApiCallResponse? getCategoriesResponse;
  ApiCallResponse? getDealOptionsResponse;

  // Existing dropdown states
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid product name';
    }
    return null;
  }

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid price';
    }
    return null;
  }

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid description';
    }
    return null;
  }

  // State field(s) for DropDown widget - Product Type
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  // State field(s) for DropDown widget - Condition
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid deal option remark';
    }
    return null;
  }

  // State field(s) for DropDown widget - Deal Options (Dynamic)
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid model no';
    }
    return null;
  }

  // State field(s) for TextField widget
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid RAM';
    }
    return null;
  }

  // State field(s) for DropDown widget
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;

  // State field(s) for DropDown widget
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;

  // State field(s) for TextField widget
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

    // Load dynamic data
    loadCategories();
    loadDealOptions();
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

  // Load Categories from Supabase
  Future<void> loadCategories() async {
    print('🔄 Loading categories...');
    isCategoriesLoading = true;
    notifyListeners();

    try {
      // Using your existing API call
      getCategoriesResponse = await PqzoepcjuqyvtosffqafCall.call();

      print('📡 Categories API Response: ${getCategoriesResponse?.succeeded}');
      print('📄 Response body: ${getCategoriesResponse?.jsonBody}');

      if (getCategoriesResponse?.succeeded ?? false) {
        categories = getCategoriesResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${categories.length} categories');

        // Debug: Print each category
        for (var category in categories) {
          print('📂 Category: ${category['name']} (ID: ${category['id']})');
        }
      } else {
        print('❌ Failed to load categories');
        print('Status: ${getCategoriesResponse?.statusCode}');
        print('Error: ${getCategoriesResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading categories: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isCategoriesLoading = false;
      notifyListeners();
    }
  }

  // Load Deal Options from Supabase
  Future<void> loadDealOptions() async {
    print('🔄 Loading deal options...');
    isDealOptionsLoading = true;
    notifyListeners();

    try {
      // Using your existing API call
      getDealOptionsResponse = await GetDealOptionsCall.call();

      print(
          '📡 Deal Options API Response: ${getDealOptionsResponse?.succeeded}');
      print('📄 Response body: ${getDealOptionsResponse?.jsonBody}');

      if (getDealOptionsResponse?.succeeded ?? false) {
        dealOptions = getDealOptionsResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${dealOptions.length} deal options');

        // Debug: Print each deal option
        for (var option in dealOptions) {
          print('🤝 Deal Option: ${option['name']} (ID: ${option['id']})');
        }
      } else {
        print('❌ Failed to load deal options');
        print('Status: ${getDealOptionsResponse?.statusCode}');
        print('Error: ${getDealOptionsResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading deal options: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isDealOptionsLoading = false;
      notifyListeners();
    }
  }

  // Helper methods to get names by ID
  String getCategoryNameById(String? id) {
    if (id == null || categories.isEmpty) return '';
    try {
      final category = categories.firstWhere(
        (cat) => cat['id']?.toString() == id,
        orElse: () => null,
      );
      return category?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting category name for ID $id: $e');
      return '';
    }
  }

  String getDealOptionNameById(String? id) {
    if (id == null || dealOptions.isEmpty) return '';
    try {
      final option = dealOptions.firstWhere(
        (opt) => opt['id']?.toString() == id,
        orElse: () => null,
      );
      return option?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting deal option name for ID $id: $e');
      return '';
    }
  }

  // Handle category selection
  void onCategoryChanged(String? categoryId) {
    selectedCategoryId = categoryId;
    dropDownValue1 = categoryId;
    print(
        '🎯 Selected category: ${getCategoryNameById(categoryId)} (ID: $categoryId)');
    notifyListeners();
  }

  // Handle deal option selection
  void onDealOptionChanged(String? dealOptionId) {
    selectedDealOptionId = dealOptionId;
    dropDownValue4 = dealOptionId;
    print(
        '🎯 Selected deal option: ${getDealOptionNameById(dealOptionId)} (ID: $dealOptionId)');
    notifyListeners();
  }

  // Check if we have loaded data
  bool get hasLoadedData => categories.isNotEmpty && dealOptions.isNotEmpty;

  // Get loading status
  bool get isLoadingAnyData => isCategoriesLoading || isDealOptionsLoading;

  void notifyListeners() {}
}
