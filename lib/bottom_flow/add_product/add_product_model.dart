// ignore_for_file: empty_catches

import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_product_widget.dart' show AddProductWidget;
import 'package:flutter/material.dart';

// Category field model
class CategoryField {
  final String id;
  final String fieldName;
  final String fieldLabel;
  final String fieldType; // text, number, dropdown, boolean, date
  final Map<String, dynamic>? fieldOptions;
  final bool isRequired;
  final String? placeholder;
  final Map<String, dynamic>? validationRules;
  final int fieldOrder;

  CategoryField({
    required this.id,
    required this.fieldName,
    required this.fieldLabel,
    required this.fieldType,
    this.fieldOptions,
    required this.isRequired,
    this.placeholder,
    this.validationRules,
    required this.fieldOrder,
  });

  factory CategoryField.fromJson(Map<String, dynamic> json) {
    return CategoryField(
      id: json['id']?.toString() ?? '',
      fieldName: json['field_name']?.toString() ?? '',
      fieldLabel: json['field_label']?.toString() ?? '',
      fieldType: json['field_type']?.toString() ?? 'text',
      fieldOptions: json['field_options'] as Map<String, dynamic>?,
      isRequired: json['is_required'] ?? false,
      placeholder: json['placeholder']?.toString(),
      validationRules: json['validation_rules'] as Map<String, dynamic>?,
      fieldOrder: (json['field_order'] as num?)?.toInt() ?? 0,
    );
  }

  List<String> get dropdownOptions {
    if (fieldType != 'dropdown' || fieldOptions == null) return [];
    return (fieldOptions!['options'] as List<dynamic>?)
            ?.map((e) => e.toString())
            .toList() ??
        [];
  }
}

// Dynamic field value model
class DynamicFieldValue {
  final String categoryFieldId;
  final String fieldName;
  dynamic value;

  DynamicFieldValue({
    required this.categoryFieldId,
    required this.fieldName,
    this.value,
  });
}

class AddProductModel extends FlutterFlowModel<AddProductWidget> {
  ///  State fields for stateful widgets in this component.

  // Dynamic image upload management
  List<FFUploadedFile> uploadedImages = [];
  bool isImageUploading = false;

  // Product submission state
  bool isSubmitting = false;
  bool isUploadingImages = false;
  String? currentUserId;
  List<String> uploadedImageUrls = []; // R2 URLs only

  // Dynamic category fields
  List<CategoryField> categoryFields = [];
  Map<String, DynamicFieldValue> dynamicFieldValues = {};
  Map<String, TextEditingController> dynamicTextControllers = {};
  Map<String, FocusNode> dynamicFocusNodes = {};
  Map<String, FormFieldController<String>> dynamicDropdownControllers = {};

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
    uploadedImageUrls.clear();
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
  bool isCategoryFieldsLoading = false;

  // Selected values (store IDs)
  String? selectedCategoryId;
  String? selectedDealOptionId;
  String? selectedConditionId;
  String? selectedCountryId;
  String? selectedTownshipId;
  String? selectedProductTypeId;

  // API responses
  ApiCallResponse? getCategoriesResponse;
  ApiCallResponse? getCategoryFieldsResponse;
  ApiCallResponse? getDealOptionsResponse;
  ApiCallResponse? getConditionsResponse;
  ApiCallResponse? getCountriesResponse;
  ApiCallResponse? getTownshipsResponse;
  ApiCallResponse? getProductTypesResponse;

  // Basic form fields
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1; // Product name
  String? Function(BuildContext, String?)? textController1Validator;

  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2; // Price
  String? Function(BuildContext, String?)? textController2Validator;

  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3; // Description
  String? Function(BuildContext, String?)? textController3Validator;

  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4; // Deal option remark
  String? Function(BuildContext, String?)? textController4Validator;

  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7; // Address
  String? Function(BuildContext, String?)? textController7Validator;

  // Dropdown controllers for static fields
  FormFieldController<String>? dropDownValueController1; // Category
  FormFieldController<String>? dropDownValueController2; // Product Type
  FormFieldController<String>? dropDownValueController3; // Condition
  FormFieldController<String>? dropDownValueController4; // Deal Option
  FormFieldController<String>? dropDownValueController5; // Country
  FormFieldController<String>? dropDownValueController6; // Township

  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;
  String? dropDownValue4;
  String? dropDownValue5;
  String? dropDownValue6;

  @override
  void initState(BuildContext context) {
    centerAppbarModel = createModel(context, () => CenterAppbarModel());

    // Initialize validators for basic fields
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController7Validator = _textController7Validator;

    // Load all static dropdown data
    loadCategories();
    loadDealOptions();
    loadConditions();
    loadCountries();
    loadProductTypes();
    getCurrentUser();
  }

  @override
  void dispose() {
    // Clear images when disposing
    uploadedImages.clear();
    uploadedImageUrls.clear();
    centerAppbarModel.dispose();

    // Dispose basic text controllers and focus nodes
    textFieldFocusNode1?.dispose();
    textController1?.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();
    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    // Dispose dynamic controllers
    for (var controller in dynamicTextControllers.values) {
      controller.dispose();
    }
    for (var node in dynamicFocusNodes.values) {
      node.dispose();
    }
    for (var controller in dynamicDropdownControllers.values) {
      controller.reset();
    }
  }

  // Basic field validators
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid product name';
    }
    return null;
  }

  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid price';
    }
    return null;
  }

  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid description';
    }
    return null;
  }

  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid deal option remark';
    }
    return null;
  }

  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid address';
    }
    return null;
  }

  // Dynamic field validator
  String? dynamicFieldValidator(CategoryField field, String? val) {
    if (field.isRequired && (val == null || val.isEmpty)) {
      return 'Please enter ${field.fieldLabel.toLowerCase()}';
    }

    // Additional validation based on field type
    if (val != null && val.isNotEmpty) {
      if (field.fieldType == 'number') {
        if (double.tryParse(val) == null) {
          return 'Please enter a valid number';
        }
      }
      // Add more validation rules as needed
    }

    return null;
  }

  // Get current user ID
  Future<void> getCurrentUser() async {
    try {
      final response = await GetCurrentUserCall.call();
      if (response.succeeded) {
        final userData = response.jsonBody;
        currentUserId = userData['id']?.toString();
      } else {}
    } catch (e) {}
  }

  // Load category fields when category is selected
  Future<void> loadCategoryFields(String categoryId) async {
    isCategoryFieldsLoading = true;
    notifyListeners();

    try {
      getCategoryFieldsResponse =
          await GetCategoryFieldsCall.call(categoryId: categoryId);

      if (getCategoryFieldsResponse?.succeeded ?? false) {
        final fieldsData = getCategoryFieldsResponse?.jsonBody ?? [];
        categoryFields = fieldsData
            .map<CategoryField>(
                (fieldData) => CategoryField.fromJson(fieldData))
            .toList();

        // Clear existing dynamic field values and controllers
        clearDynamicFields();

        // Initialize controllers and values for new fields
        initializeDynamicFields();
      } else {
        categoryFields = [];
      }
    } catch (e) {
      categoryFields = [];
    } finally {
      isCategoryFieldsLoading = false;
      notifyListeners();
    }
  }

  // Clear dynamic fields
  void clearDynamicFields() {
    // Dispose existing controllers
    for (var controller in dynamicTextControllers.values) {
      controller.dispose();
    }
    for (var node in dynamicFocusNodes.values) {
      node.dispose();
    }
    for (var controller in dynamicDropdownControllers.values) {
      controller.reset();
    }

    // Clear maps
    dynamicFieldValues.clear();
    dynamicTextControllers.clear();
    dynamicFocusNodes.clear();
    dynamicDropdownControllers.clear();
  }

  // Initialize dynamic fields
  void initializeDynamicFields() {
    for (var field in categoryFields) {
      // Initialize field value
      dynamicFieldValues[field.fieldName] = DynamicFieldValue(
        categoryFieldId: field.id,
        fieldName: field.fieldName,
        value: null,
      );

      // Initialize controllers based on field type
      if (field.fieldType == 'text' || field.fieldType == 'number') {
        dynamicTextControllers[field.fieldName] = TextEditingController();
        dynamicFocusNodes[field.fieldName] = FocusNode();
      } else if (field.fieldType == 'dropdown') {
        dynamicDropdownControllers[field.fieldName] =
            FormFieldController<String>(null);
      }
    }
  }

  // Update dynamic field value
  void updateDynamicFieldValue(String fieldName, dynamic value) {
    if (dynamicFieldValues.containsKey(fieldName)) {
      dynamicFieldValues[fieldName]!.value = value;
      notifyListeners();
    }
  }

  // Get dynamic field value
  dynamic getDynamicFieldValue(String fieldName) {
    return dynamicFieldValues[fieldName]?.value;
  }

  // Upload single image to Cloudflare R2
  Future<String?> uploadImageToR2(FFUploadedFile imageFile, int index) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'product_${timestamp}_$index.jpg';

      final response = await UploadImageToR2Call.call(
        imageFile: imageFile,
        fileName: fileName,
      );

      if (response.succeeded) {
        final responseData = response.jsonBody;
        final imageUrl = responseData['url']?.toString();
        return imageUrl;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  // Upload all images to Cloudflare R2
  Future<List<String>> uploadAllImagesToR2() async {
    if (uploadedImages.isEmpty) {
      return [];
    }

    isUploadingImages = true;
    notifyListeners();

    List<String> r2ImageUrls = [];

    try {
      for (int i = 0; i < uploadedImages.length; i++) {
        final imageUrl = await uploadImageToR2(uploadedImages[i], i + 1);

        if (imageUrl != null) {
          r2ImageUrls.add(imageUrl);
        } else {}

        await Future.delayed(const Duration(milliseconds: 500));
      }

      return r2ImageUrls;
    } catch (e) {
      return r2ImageUrls;
    } finally {
      isUploadingImages = false;
      notifyListeners();
    }
  }

  // Validate form data
  bool validateForm() {
    // Basic field validation
    if (textController1?.text.isEmpty ?? true) {
      return false;
    }

    if (textController2?.text.isEmpty ?? true) {
      return false;
    }

    if (selectedCategoryId == null) {
      return false;
    }

    // Validate dynamic fields
    for (var field in categoryFields) {
      if (field.isRequired) {
        final value = getDynamicFieldValue(field.fieldName);
        if (value == null || value.toString().isEmpty) {
          return false;
        }
      }
    }

    if (uploadedImages.isEmpty) {}

    return true;
  }

  // Parse price from text controller
  double? getPriceValue() {
    try {
      final priceText = textController2?.text ?? '';
      final cleanPrice = priceText.replaceAll(RegExp(r'[^\d.]'), '');
      return double.tryParse(cleanPrice);
    } catch (e) {
      return null;
    }
  }

  // Get phone number from custom widget
  String? getPhoneNumber() {
    return '(405) 555-0128'; // Replace with actual implementation
  }

  // Prepare dynamic field values for submission
  List<Map<String, dynamic>> prepareDynamicFieldValues(String productId) {
    List<Map<String, dynamic>> fieldValues = [];

    for (var field in categoryFields) {
      final value = getDynamicFieldValue(field.fieldName);
      if (value != null && value.toString().isNotEmpty) {
        fieldValues.add({
          'category_field_id': field.id,
          'field_value': value.toString(),
        });
      }
    }

    return fieldValues;
  }

  // Submit product to Supabase (with dynamic fields)
  Future<bool> submitProduct() async {
    if (isSubmitting) {
      return false;
    }

    isSubmitting = true;
    notifyListeners();

    try {
      if (!validateForm()) {
        return false;
      }

      if (currentUserId == null) {
        await getCurrentUser();
        if (currentUserId == null) {
          return false;
        }
      }

      // Step 1: Upload images to Cloudflare R2
      uploadedImageUrls = await uploadAllImagesToR2();

      // Step 2: Create basic product record
      final productResponse = await CreateProductCall.call(
        userId: currentUserId,
        name: textController1?.text,
        price: getPriceValue(),
        description: textController3?.text,
        phoneNumber: getPhoneNumber(),
        dealOptionRemark: textController4?.text,
        address: textController7?.text,
        imageUrls: uploadedImageUrls,
        categoryId: selectedCategoryId,
        productTypeId: selectedProductTypeId,
        conditionId: selectedConditionId,
        dealOptionId: selectedDealOptionId,
        countryId: selectedCountryId,
        townshipId: selectedTownshipId,
      );

      if (!productResponse.succeeded) {
        return false;
      }

      final productData = productResponse.jsonBody[0];
      final productId = productData['id']?.toString();

      if (productId == null) {
        return false;
      }

      // Step 3: Save dynamic field values
      if (categoryFields.isNotEmpty) {
        final fieldValues = prepareDynamicFieldValues(productId);

        if (fieldValues.isNotEmpty) {
          final fieldValuesResponse = await SaveProductFieldValuesCall.call(
            productId: productId,
            fieldValues: fieldValues,
          );

          if (fieldValuesResponse.succeeded) {
          } else {
            // Don't fail the entire submission for field value errors
          }
        }
      }

      return true;
    } catch (e) {
      return false;
    } finally {
      isSubmitting = false;
      notifyListeners();
    }
  }

  // Reset form after successful submission
  void resetForm() {
    // Clear basic text controllers
    textController1?.clear();
    textController2?.clear();
    textController3?.clear();
    textController4?.clear();
    textController7?.clear();

    // Reset dropdown selections
    selectedCategoryId = null;
    selectedProductTypeId = null;
    selectedConditionId = null;
    selectedDealOptionId = null;
    selectedCountryId = null;
    selectedTownshipId = null;

    // Reset dropdown controllers
    dropDownValueController1?.reset();
    dropDownValueController2?.reset();
    dropDownValueController3?.reset();
    dropDownValueController4?.reset();
    dropDownValueController5?.reset();
    dropDownValueController6?.reset();

    // Clear dynamic fields
    clearDynamicFields();
    categoryFields.clear();

    // Clear images and URLs
    uploadedImages.clear();
    uploadedImageUrls.clear();

    notifyListeners();
  }

  // Load Categories from Supabase
  Future<void> loadCategories() async {
    isCategoriesLoading = true;
    notifyListeners();

    try {
      getCategoriesResponse = await GetCategoriesCall.call();

      if (getCategoriesResponse?.succeeded ?? false) {
        categories = getCategoriesResponse?.jsonBody ?? [];
      } else {}
    } catch (e) {
    } finally {
      isCategoriesLoading = false;
      notifyListeners();
    }
  }

  // Load Deal Options from Supabase
  Future<void> loadDealOptions() async {
    isDealOptionsLoading = true;
    notifyListeners();

    try {
      getDealOptionsResponse = await GetDealOptionsCall.call();

      if (getDealOptionsResponse?.succeeded ?? false) {
        dealOptions = getDealOptionsResponse?.jsonBody ?? [];
      } else {}
    } catch (e) {
    } finally {
      isDealOptionsLoading = false;
      notifyListeners();
    }
  }

  // Load Conditions from Supabase
  Future<void> loadConditions() async {
    isConditionsLoading = true;
    notifyListeners();

    try {
      getConditionsResponse = await GetConditionsCall.call();

      if (getConditionsResponse?.succeeded ?? false) {
        conditions = getConditionsResponse?.jsonBody ?? [];
      } else {}
    } catch (e) {
    } finally {
      isConditionsLoading = false;
      notifyListeners();
    }
  }

  // Load Countries from Supabase
  Future<void> loadCountries() async {
    isCountriesLoading = true;
    notifyListeners();

    try {
      getCountriesResponse = await GetCountriesCall.call();

      if (getCountriesResponse?.succeeded ?? false) {
        countries = getCountriesResponse?.jsonBody ?? [];
      } else {}
    } catch (e) {
    } finally {
      isCountriesLoading = false;
      notifyListeners();
    }
  }

  // Load Townships from Supabase (filtered by country if selected)
  Future<void> loadTownships({String? countryId}) async {
    // Don't load if no country is selected
    if (countryId == null || countryId.isEmpty) {
      townships.clear();
      notifyListeners();
      return;
    }

    isTownshipsLoading = true;
    notifyListeners();

    try {
      getTownshipsResponse = await GetTownshipsCall.call(countryId: countryId);

      if (getTownshipsResponse?.succeeded ?? false) {
        final newTownships = getTownshipsResponse?.jsonBody ?? [];
        townships = newTownships;
      } else {
        townships.clear();
      }
    } catch (e) {
      townships.clear();
    } finally {
      isTownshipsLoading = false;
      notifyListeners();
    }
  }

  // Load Product Types from Supabase
  Future<void> loadProductTypes() async {
    isProductTypesLoading = true;
    notifyListeners();

    try {
      getProductTypesResponse = await GetProductTypesCall.call();

      if (getProductTypesResponse?.succeeded ?? false) {
        productTypes = getProductTypesResponse?.jsonBody ?? [];
      } else {}
    } catch (e) {
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
      return '';
    }
  }

  // Handle category selection
  void onCategoryChanged(String? categoryId) {
    selectedCategoryId = categoryId;
    dropDownValue1 = categoryId;

    // Clear existing dynamic fields when category changes
    clearDynamicFields();
    categoryFields.clear();

    // Load category fields for the selected category
    if (categoryId != null) {
      loadCategoryFields(categoryId);
    }

    notifyListeners();
  }

  // Handle product type selection
  void onProductTypeChanged(String? productTypeId) {
    selectedProductTypeId = productTypeId;
    dropDownValue2 = productTypeId;
    notifyListeners();
  }

  // Handle condition selection
  void onConditionChanged(String? conditionId) {
    selectedConditionId = conditionId;
    dropDownValue3 = conditionId;
    notifyListeners();
  }

  // Handle deal option selection
  void onDealOptionChanged(String? dealOptionId) {
    selectedDealOptionId = dealOptionId;
    dropDownValue4 = dealOptionId;
    notifyListeners();
  }

  // Handle country selection
  void onCountryChanged(String? countryId) {
    selectedCountryId = countryId;
    dropDownValue5 = countryId;

    // IMPORTANT: Reset township selection when country changes
    selectedTownshipId = null;
    dropDownValue6 = null;

    // Reset the township dropdown controller
    if (dropDownValueController6 != null) {
      dropDownValueController6!.reset();
    }

    // Clear townships list first
    townships.clear();

    // Load townships for the selected country
    if (countryId != null && countryId.isNotEmpty) {
      loadTownships(countryId: countryId);
    }

    notifyListeners();
  }

  // Handle township selection
  void onTownshipChanged(String? townshipId) {
    selectedTownshipId = townshipId;
    dropDownValue6 = townshipId;
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
      isProductTypesLoading ||
      isCategoryFieldsLoading;

  void notifyListeners() {
    // This would typically call setState in the actual FlutterFlow implementation
  }
}
