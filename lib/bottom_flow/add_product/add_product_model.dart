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

  // Dynamic image upload management
  List<FFUploadedFile> uploadedImages = [];
  bool isImageUploading = false;

  // Product submission state
  bool isSubmitting = false;
  bool isUploadingImages = false;
  String? currentUserId;
  List<String> uploadedImageUrls = []; // R2 URLs only

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

    getCurrentUser();
  }

  @override
  void dispose() {
    // Clear images when disposing
    uploadedImages.clear();
    uploadedImageUrls.clear();
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

  // Get current user ID
  Future<void> getCurrentUser() async {
    try {
      final response = await GetCurrentUserCall.call();
      if (response.succeeded) {
        final userData = response.jsonBody;
        currentUserId = userData['id']?.toString();
        print('✅ Current user ID: $currentUserId');
      } else {
        print('❌ Failed to get current user');
      }
    } catch (e) {
      print('🚨 Error getting current user: $e');
    }
  }

  // Upload single image to Cloudflare R2
  Future<String?> uploadImageToR2(FFUploadedFile imageFile, int index) async {
    try {
      // Generate unique filename
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'product_${timestamp}_$index.jpg';

      print('📤 Uploading image $index to R2: $fileName');

      final response = await UploadImageToR2Call.call(
        imageFile: imageFile,
        fileName: fileName,
      );
      print("${response.succeeded} ====================");
      if (response.succeeded) {
        final responseData = response.jsonBody;
        final imageUrl = responseData['url']?.toString();
        print('✅ Image $index uploaded to R2: $imageUrl');
        return imageUrl;
      } else {
        print('❌ Failed to upload image $index to R2: ${response.statusCode}');
        print('Error: ${response.bodyText}');
        return null;
      }
    } catch (e) {
      print('🚨 Exception uploading image $index to R2: $e');
      return null;
    }
  }

  // Upload all images to Cloudflare R2
  Future<List<String>> uploadAllImagesToR2() async {
    if (uploadedImages.isEmpty) {
      print('ℹ️ No images to upload to R2');
      return [];
    }

    print(
        '📤 Starting upload of ${uploadedImages.length} images to Cloudflare R2...');
    isUploadingImages = true;
    notifyListeners();

    List<String> r2ImageUrls = [];

    try {
      // Upload images sequentially to avoid overwhelming R2
      for (int i = 0; i < uploadedImages.length; i++) {
        print('📤 Uploading image ${i + 1}/${uploadedImages.length} to R2...');

        final imageUrl = await uploadImageToR2(uploadedImages[i], i + 1);

        if (imageUrl != null) {
          r2ImageUrls.add(imageUrl);
          // print('✅ Image ${i + 1} uploaded to R2 successfully');
        } else {
          print('⚠️ Failed to upload image ${i + 1} to R2');
        }

        // Small delay between uploads
        await Future.delayed(const Duration(milliseconds: 500));
      }

      print(
          '✅ R2 Upload complete: ${r2ImageUrls.length}/${uploadedImages.length} images uploaded');
      print('📋 R2 URLs:');
      r2ImageUrls.forEach((url) => print('  - $url'));

      return r2ImageUrls;
    } catch (e) {
      print('🚨 Error uploading images to R2: $e');
      return r2ImageUrls; // Return partial results
    } finally {
      isUploadingImages = false;
      notifyListeners();
    }
  }

  // Validate form data
  bool validateForm() {
    // Basic validation
    if (textController1?.text.isEmpty ?? true) {
      print('❌ Product name is required');
      return false;
    }

    if (textController2?.text.isEmpty ?? true) {
      print('❌ Price is required');
      return false;
    }

    if (selectedCategoryId == null) {
      print('❌ Category is required');
      return false;
    }

    if (uploadedImages.isEmpty) {
      print('⚠️ No product images selected');
      // You can make this required if needed
      // return false;
    }

    return true;
  }

  // Parse price from text controller
  double? getPriceValue() {
    try {
      final priceText = textController2?.text ?? '';
      // Remove currency symbols and parse
      final cleanPrice = priceText.replaceAll(RegExp(r'[^\d.]'), '');
      return double.tryParse(cleanPrice);
    } catch (e) {
      print('Error parsing price: $e');
      return null;
    }
  }

  // Get phone number from custom widget
  String? getPhoneNumber() {
    // You'll need to implement this based on your CustomLabelCountryCodeWidget
    // For now, return a placeholder or implement proper phone number extraction
    return '(405) 555-0128'; // Replace with actual implementation
  }

  // Submit product to Supabase (with R2 image URLs)
  Future<bool> submitProduct() async {
    if (isSubmitting) {
      print('⚠️ Already submitting, please wait...');
      return false;
    }

    print('🚀 Starting product submission to Supabase...');
    isSubmitting = true;
    notifyListeners();

    try {
      // Step 1: Validate form
      if (!validateForm()) {
        print('❌ Form validation failed');
        return false;
      }

      // Step 2: Get current user
      if (currentUserId == null) {
        await getCurrentUser();
        if (currentUserId == null) {
          print('❌ Could not get current user ID');
          return false;
        }
      }

      // Step 3: Upload images to Cloudflare R2
      uploadedImageUrls = await uploadAllImagesToR2();

      // Step 4: Create product record in Supabase (with R2 URLs)
      print('💾 Creating product in Supabase database...');

      final response = await CreateProductCall.call(
        userId: currentUserId,
        name: textController1?.text,
        price: getPriceValue(),
        description: textController3?.text,
        phoneNumber: getPhoneNumber(),
        dealOptionRemark: textController4?.text,
        modelNo: textController5?.text,
        ram: textController6?.text,
        address: textController7?.text,
        imageUrls: uploadedImageUrls, // R2 URLs stored in Supabase
        categoryId: selectedCategoryId,
        productTypeId: selectedProductTypeId,
        conditionId: selectedConditionId,
        dealOptionId: selectedDealOptionId,
        countryId: selectedCountryId,
        townshipId: selectedTownshipId,
      );

      if (response.succeeded) {
        final productData = response.jsonBody;
        print('✅ Product created successfully in Supabase!');
        print('📋 Product Details:');
        print('  - Product ID: ${productData[0]['id']}');
        print('  - Name: ${textController1?.text}');
        print('  - Price: \$${getPriceValue()}');
        print('  - Images stored in R2: ${uploadedImageUrls.length}');
        print(
            '  - Image URLs saved in Supabase: ${uploadedImageUrls.join(', ')}');
        return true;
      } else {
        print('❌ Failed to create product in Supabase: ${response.statusCode}');
        print('Error: ${response.bodyText}');
        return false;
      }
    } catch (e) {
      print('🚨 Exception during product submission: $e');
      return false;
    } finally {
      isSubmitting = false;
      notifyListeners();
    }
  }

  // Reset form after successful submission
  void resetForm() {
    // Clear text controllers
    textController1?.clear();
    textController2?.clear();
    textController3?.clear();
    textController4?.clear();
    textController5?.clear();
    textController6?.clear();
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

    // Clear images and URLs
    uploadedImages.clear();
    uploadedImageUrls.clear();

    // print('📝 Form reset successfully');
    notifyListeners();
  }

  // Load Categories from Supabase
  Future<void> loadCategories() async {
    // print('🔄 Loading categories...');
    isCategoriesLoading = true;
    notifyListeners();

    try {
      getCategoriesResponse = await PqzoepcjuqyvtosffqafCall.call();

      // print('📡 Categories API Response: ${getCategoriesResponse?.succeeded}');
      // print('📄 Response body: ${getCategoriesResponse?.jsonBody}');

      if (getCategoriesResponse?.succeeded ?? false) {
        categories = getCategoriesResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${categories.length} categories');

        // for (var category in categories) {
        //   print('📂 Category: ${category['name']} (ID: ${category['id']})');
        // }
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
    // print('🔄 Loading deal options...');
    isDealOptionsLoading = true;
    notifyListeners();

    try {
      getDealOptionsResponse = await GetDealOptionsCall.call();

      // print(
      //     '📡 Deal Options API Response: ${getDealOptionsResponse?.succeeded}');
      // print('📄 Response body: ${getDealOptionsResponse?.jsonBody}');

      if (getDealOptionsResponse?.succeeded ?? false) {
        dealOptions = getDealOptionsResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${dealOptions.length} deal options');

        // for (var option in dealOptions) {
        //   print('🤝 Deal Option: ${option['name']} (ID: ${option['id']})');
        // }
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
    // print('🔄 Loading conditions...');
    isConditionsLoading = true;
    notifyListeners();

    try {
      getConditionsResponse = await GetConditionsCall.call();

      // print('📡 Conditions API Response: ${getConditionsResponse?.succeeded}');
      // print('📄 Response body: ${getConditionsResponse?.jsonBody}');

      if (getConditionsResponse?.succeeded ?? false) {
        conditions = getConditionsResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${conditions.length} conditions');

        // for (var condition in conditions) {
        //   print('🔧 Condition: ${condition['name']} (ID: ${condition['id']})');
        // }
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
    // print('🔄 Loading countries...');
    isCountriesLoading = true;
    notifyListeners();

    try {
      getCountriesResponse = await GetCountriesCall.call();

      // print('📡 Countries API Response: ${getCountriesResponse?.succeeded}');
      // print('📄 Response body: ${getCountriesResponse?.jsonBody}');

      if (getCountriesResponse?.succeeded ?? false) {
        countries = getCountriesResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${countries.length} countries');

        // for (var country in countries) {
        //   print('🌍 Country: ${country['name']} (ID: ${country['id']})');
        // }
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

      // print('📡 Townships API Response: ${getTownshipsResponse?.succeeded}');
      // print('📄 Response body: ${getTownshipsResponse?.jsonBody}');

      if (getTownshipsResponse?.succeeded ?? false) {
        townships = getTownshipsResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${townships.length} townships');

        // for (var township in townships) {
        //   print('🏘️ Township: ${township['name']} (ID: ${township['id']})');
        // }
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
    // print('🔄 Loading product types...');
    isProductTypesLoading = true;
    notifyListeners();

    try {
      getProductTypesResponse = await GetProductTypesCall.call();

      // print(
      //     '📡 Product Types API Response: ${getProductTypesResponse?.succeeded}');
      // print('📄 Response body: ${getProductTypesResponse?.jsonBody}');

      if (getProductTypesResponse?.succeeded ?? false) {
        productTypes = getProductTypesResponse?.jsonBody ?? [];
        // print('✅ Successfully loaded ${productTypes.length} product types');

        // for (var type in productTypes) {
        //   print('📦 Product Type: ${type['name']} (ID: ${type['id']})');
        // }
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
    // print(
    //     '🎯 Selected category: ${getCategoryNameById(categoryId)} (ID: $categoryId)');
    notifyListeners();
  }

  // Handle product type selection
  void onProductTypeChanged(String? productTypeId) {
    selectedProductTypeId = productTypeId;
    dropDownValue2 = productTypeId;
    // print(
    //     '🎯 Selected product type: ${getProductTypeNameById(productTypeId)} (ID: $productTypeId)');
    notifyListeners();
  }

  // Handle condition selection
  void onConditionChanged(String? conditionId) {
    selectedConditionId = conditionId;
    dropDownValue3 = conditionId;
    // print(
    //     '🎯 Selected condition: ${getConditionNameById(conditionId)} (ID: $conditionId)');
    notifyListeners();
  }

  // Handle deal option selection
  void onDealOptionChanged(String? dealOptionId) {
    selectedDealOptionId = dealOptionId;
    dropDownValue4 = dealOptionId;
    // print(
    //     '🎯 Selected deal option: ${getDealOptionNameById(dealOptionId)} (ID: $dealOptionId)');
    notifyListeners();
  }

  // Handle country selection
  void onCountryChanged(String? countryId) {
    selectedCountryId = countryId;
    dropDownValue5 = countryId;
    // print(
    //     '🎯 Selected country: ${getCountryNameById(countryId)} (ID: $countryId)');

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
    // print(
    //     '🎯 Selected township: ${getTownshipNameById(townshipId)} (ID: $townshipId)');
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
