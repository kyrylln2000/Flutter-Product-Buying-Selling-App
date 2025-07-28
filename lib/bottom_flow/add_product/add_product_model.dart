// import '/backend/schema/structs/index.dart';
// import '/flutter_flow/flutter_flow_drop_down.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import '/flutter_flow/upload_data.dart';
// import 'dart:ui';
// import '/custom_code/widgets/index.dart' as custom_widgets;
// import '/index.dart';
// import 'package:flutter/gestures.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this component.

  List<FFUploadedFile> uploadedImages = [];
  bool isImageUploading = false;

  // Method to add a new image
  void addImage(FFUploadedFile image) {
    if (uploadedImages.length < 10) {
      uploadedImages.add(image);
      notifyListeners();
    }
  }

  // Method to clear all images
  void clearAllImages() {
    uploadedImages.clear();
    notifyListeners();
  }

  // Get the number of uploaded images
  int get imageCount => uploadedImages.length;

  // Check if can add more images
  bool get canAddMoreImages => uploadedImages.length < 10;

  // Check if has any images
  bool get hasImages => uploadedImages.isNotEmpty;

  // Method to remove an image at specific index
  void removeImage(int index) {
    if (index >= 0 && index < uploadedImages.length) {
      uploadedImages.removeAt(index);
      notifyListeners();
    }
  }

  final formKey = GlobalKey<FormState>();

  // Model for CenterAppbar component.
  late CenterAppbarModel centerAppbarModel;

  // // Image upload fields (keeping all existing ones)
  // bool isDataUploading_uploadData11 = false;
  // FFUploadedFile uploadedLocalFile_uploadData11 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData22 = false;
  // FFUploadedFile uploadedLocalFile_uploadData22 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData33 = false;
  // FFUploadedFile uploadedLocalFile_uploadData33 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData44 = false;
  // FFUploadedFile uploadedLocalFile_uploadData44 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData55 = false;
  // FFUploadedFile uploadedLocalFile_uploadData55 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData66 = false;
  // FFUploadedFile uploadedLocalFile_uploadData66 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData77 = false;
  // FFUploadedFile uploadedLocalFile_uploadData77 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData88 = false;
  // FFUploadedFile uploadedLocalFile_uploadData88 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData99 = false;
  // FFUploadedFile uploadedLocalFile_uploadData99 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // bool isDataUploading_uploadData10 = false;
  // FFUploadedFile uploadedLocalFile_uploadData10 =
  //     FFUploadedFile(bytes: Uint8List.fromList([]));

  // DYNAMIC DROPDOWN DATA
  List<dynamic> categories = [];
  List<dynamic> dealOptions = [];
  List<dynamic> conditions = [];
  List<dynamic> countries = [];
  List<dynamic> townships = [];
  List<dynamic> productTypes = [];

  // Loading states
  bool isCategoriesLoading = false;
  bool isDealOptionsLoading = false;
  bool isConditionsLoading = false;
  bool isCountriesLoading = false;
  bool isTownshipsLoading = false;
  bool isProductTypesLoading = false;

  // Selected values (store IDs)
  String? selectedCategoryId;
  String? selectedDealOptionId;
  String? selectedConditionId;
  String? selectedCountryId;
  String? selectedTownshipId;
  String? selectedProductTypeId;

  // API responses
  ApiCallResponse? getCategoriesResponse;
  ApiCallResponse? getDealOptionsResponse;
  ApiCallResponse? getConditionsResponse;
  ApiCallResponse? getCountriesResponse;
  ApiCallResponse? getTownshipsResponse;
  ApiCallResponse? getProductTypesResponse;

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

  // State field(s) for DropDown widget - Product Type (Dynamic)
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  // State field(s) for DropDown widget - Condition (Dynamic)
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

  // State field(s) for DropDown widget - Countries (Dynamic)
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;

  // State field(s) for DropDown widget - Townships (Dynamic)
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

    // Load all dynamic data
    loadCategories();
    loadDealOptions();
    loadConditions();
    loadCountries();
    loadProductTypes();
  }

  @override
  void dispose() {
    // Clear images when disposing
    uploadedImages.clear();
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
      getCategoriesResponse = await PqzoepcjuqyvtosffqafCall.call();

      print('📡 Categories API Response: ${getCategoriesResponse?.succeeded}');
      print('📄 Response body: ${getCategoriesResponse?.jsonBody}');

      if (getCategoriesResponse?.succeeded ?? false) {
        categories = getCategoriesResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${categories.length} categories');

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
      getDealOptionsResponse = await GetDealOptionsCall.call();

      print(
          '📡 Deal Options API Response: ${getDealOptionsResponse?.succeeded}');
      print('📄 Response body: ${getDealOptionsResponse?.jsonBody}');

      if (getDealOptionsResponse?.succeeded ?? false) {
        dealOptions = getDealOptionsResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${dealOptions.length} deal options');

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

  // Load Conditions from Supabase
  Future<void> loadConditions() async {
    print('🔄 Loading conditions...');
    isConditionsLoading = true;
    notifyListeners();

    try {
      getConditionsResponse = await GetConditionsCall.call();

      print('📡 Conditions API Response: ${getConditionsResponse?.succeeded}');
      print('📄 Response body: ${getConditionsResponse?.jsonBody}');

      if (getConditionsResponse?.succeeded ?? false) {
        conditions = getConditionsResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${conditions.length} conditions');

        for (var condition in conditions) {
          print('🔧 Condition: ${condition['name']} (ID: ${condition['id']})');
        }
      } else {
        print('❌ Failed to load conditions');
        print('Status: ${getConditionsResponse?.statusCode}');
        print('Error: ${getConditionsResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading conditions: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isConditionsLoading = false;
      notifyListeners();
    }
  }

  // Load Countries from Supabase
  Future<void> loadCountries() async {
    print('🔄 Loading countries...');
    isCountriesLoading = true;
    notifyListeners();

    try {
      getCountriesResponse = await GetCountriesCall.call();

      print('📡 Countries API Response: ${getCountriesResponse?.succeeded}');
      print('📄 Response body: ${getCountriesResponse?.jsonBody}');

      if (getCountriesResponse?.succeeded ?? false) {
        countries = getCountriesResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${countries.length} countries');

        for (var country in countries) {
          print('🌍 Country: ${country['name']} (ID: ${country['id']})');
        }
      } else {
        print('❌ Failed to load countries');
        print('Status: ${getCountriesResponse?.statusCode}');
        print('Error: ${getCountriesResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading countries: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isCountriesLoading = false;
      notifyListeners();
    }
  }

  // Load Townships from Supabase (filtered by country if selected)
  Future<void> loadTownships({String? countryId}) async {
    print('🔄 Loading townships for country: $countryId');
    isTownshipsLoading = true;
    notifyListeners();

    try {
      getTownshipsResponse = await GetTownshipsCall.call(countryId: countryId);

      print('📡 Townships API Response: ${getTownshipsResponse?.succeeded}');
      print('📄 Response body: ${getTownshipsResponse?.jsonBody}');

      if (getTownshipsResponse?.succeeded ?? false) {
        townships = getTownshipsResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${townships.length} townships');

        for (var township in townships) {
          print('🏘️ Township: ${township['name']} (ID: ${township['id']})');
        }
      } else {
        print('❌ Failed to load townships');
        print('Status: ${getTownshipsResponse?.statusCode}');
        print('Error: ${getTownshipsResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading townships: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isTownshipsLoading = false;
      notifyListeners();
    }
  }

  // Load Product Types from Supabase
  Future<void> loadProductTypes() async {
    print('🔄 Loading product types...');
    isProductTypesLoading = true;
    notifyListeners();

    try {
      getProductTypesResponse = await GetProductTypesCall.call();

      print(
          '📡 Product Types API Response: ${getProductTypesResponse?.succeeded}');
      print('📄 Response body: ${getProductTypesResponse?.jsonBody}');

      if (getProductTypesResponse?.succeeded ?? false) {
        productTypes = getProductTypesResponse?.jsonBody ?? [];
        print('✅ Successfully loaded ${productTypes.length} product types');

        for (var type in productTypes) {
          print('📦 Product Type: ${type['name']} (ID: ${type['id']})');
        }
      } else {
        print('❌ Failed to load product types');
        print('Status: ${getProductTypesResponse?.statusCode}');
        print('Error: ${getProductTypesResponse?.bodyText}');
      }
    } catch (e, stackTrace) {
      print('🚨 Exception loading product types: $e');
      print('Stack trace: $stackTrace');
    } finally {
      isProductTypesLoading = false;
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

  String getConditionNameById(String? id) {
    if (id == null || conditions.isEmpty) return '';
    try {
      final condition = conditions.firstWhere(
        (cond) => cond['id']?.toString() == id,
        orElse: () => null,
      );
      return condition?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting condition name for ID $id: $e');
      return '';
    }
  }

  String getCountryNameById(String? id) {
    if (id == null || countries.isEmpty) return '';
    try {
      final country = countries.firstWhere(
        (country) => country['id']?.toString() == id,
        orElse: () => null,
      );
      return country?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting country name for ID $id: $e');
      return '';
    }
  }

  String getTownshipNameById(String? id) {
    if (id == null || townships.isEmpty) return '';
    try {
      final township = townships.firstWhere(
        (township) => township['id']?.toString() == id,
        orElse: () => null,
      );
      return township?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting township name for ID $id: $e');
      return '';
    }
  }

  String getProductTypeNameById(String? id) {
    if (id == null || productTypes.isEmpty) return '';
    try {
      final type = productTypes.firstWhere(
        (type) => type['id']?.toString() == id,
        orElse: () => null,
      );
      return type?['name']?.toString() ?? '';
    } catch (e) {
      print('Error getting product type name for ID $id: $e');
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

  // Handle product type selection
  void onProductTypeChanged(String? productTypeId) {
    selectedProductTypeId = productTypeId;
    dropDownValue2 = productTypeId;
    print(
        '🎯 Selected product type: ${getProductTypeNameById(productTypeId)} (ID: $productTypeId)');
    notifyListeners();
  }

  // Handle condition selection
  void onConditionChanged(String? conditionId) {
    selectedConditionId = conditionId;
    dropDownValue3 = conditionId;
    print(
        '🎯 Selected condition: ${getConditionNameById(conditionId)} (ID: $conditionId)');
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

  // Handle country selection
  void onCountryChanged(String? countryId) {
    selectedCountryId = countryId;
    dropDownValue5 = countryId;
    print(
        '🎯 Selected country: ${getCountryNameById(countryId)} (ID: $countryId)');

    // Reset township selection when country changes
    selectedTownshipId = null;
    dropDownValue6 = null;
    dropDownValueController6?.reset();

    // Load townships for the selected country
    loadTownships(countryId: countryId);
    notifyListeners();
  }

  // Handle township selection
  void onTownshipChanged(String? townshipId) {
    selectedTownshipId = townshipId;
    dropDownValue6 = townshipId;
    print(
        '🎯 Selected township: ${getTownshipNameById(townshipId)} (ID: $townshipId)');
    notifyListeners();
  }

  // Check if we have loaded data
  bool get hasLoadedData =>
      categories.isNotEmpty &&
      dealOptions.isNotEmpty &&
      conditions.isNotEmpty &&
      countries.isNotEmpty &&
      productTypes.isNotEmpty;

  // Get loading status
  bool get isLoadingAnyData =>
      isCategoriesLoading ||
      isDealOptionsLoading ||
      isConditionsLoading ||
      isCountriesLoading ||
      isTownshipsLoading ||
      isProductTypesLoading;

  void notifyListeners() {
    // This would typically call setState in the actual FlutterFlow implementation
  }
}
