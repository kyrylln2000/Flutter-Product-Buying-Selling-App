// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_product_model.dart';
export 'add_product_model.dart';

class AddProductWidget extends StatefulWidget {
  const AddProductWidget({super.key});

  @override
  State<AddProductWidget> createState() => _AddProductWidgetState();
}

class _AddProductWidgetState extends State<AddProductWidget> {
  late AddProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  // Method to trigger state update manually
  // void _triggerUpdate() {
  //   if (mounted) {
  //     setState(() {
  //       // Force rebuild of the widget
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProductModel());

    // Initialize basic text controllers
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    // Set default values for demo
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController1?.text = 'iPhone 15 pro max';
          _model.textController2?.text = '\$1500.00';
          _model.textController3?.text =
              'iPhone 15 Pro Max, a titanium marvel, boasts an aerospace-grade build, making it the lightest Pro model ever. The A17 Pro Chip marks a historic leap in Apple GPUs, delivering unparalleled graphics performance and immersive gaming experiences.';
          _model.textController4?.text =
              'The camera system shines with a 48 MP Main camera, offering remarkable detail and automatic portrait enhancements. Convenience is key with the Action button for quick tasks and Focus filters. Plus, it\'s USB 3 compatible.';
          _model.textController7?.text =
              '913 Buckridge Summit, newyork, Florida, USA, 39663-3766';
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  // Helper method to build text field
  Widget _buildTextField({
    required String label,
    required TextEditingController? controller,
    required FocusNode? focusNode,
    required String? Function(BuildContext, String?)? validator,
    String? hintText,
    int maxLines = 1,
    TextInputAction textInputAction = TextInputAction.next,
    bool isRequired = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 4.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: label,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Satoshi',
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                if (isRequired)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              autofocus: false,
              textInputAction: textInputAction,
              obscureText: false,
              keyboardType:
                  maxLines > 1 ? TextInputType.multiline : TextInputType.text,
              decoration: InputDecoration(
                isDense: false,
                hintText: hintText ?? 'Enter $label',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Satoshi',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      lineHeight: 1.0,
                    ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      lineHeight: 1.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).black20,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).black20,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                    16.0, 16.5, 16.0, 16.5),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Satoshi',
                    fontSize: maxLines > 1 ? 15.0 : 17.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        maxLines > 1 ? FontWeight.w500 : FontWeight.normal,
                    lineHeight: 1.0,
                  ),
              maxLines: maxLines,
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator: validator?.asValidator(context),
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to build dropdown
  Widget _buildDropdown({
    required String label,
    required FormFieldController<String>? controller,
    required List<String> options,
    required List<String> optionLabels,
    required void Function(String?) onChanged,
    String? hintText,
    bool isLoading = false,
    bool isDisabled = false,
    bool isRequired = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 4.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: label,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Satoshi',
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                if (isRequired)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: FlutterFlowDropDown<String>(
            controller: controller,
            options: options,
            optionLabels: optionLabels,
            onChanged: onChanged,
            width: double.infinity,
            height: 54.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Satoshi',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
            hintText: hintText ?? 'Select $label',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 1.0,
            borderColor: FlutterFlowTheme.of(context).black20,
            borderWidth: 1.0,
            borderRadius: 12.0,
            margin:
                const EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
            disabled: isLoading || isDisabled,
          ),
        ),
      ],
    );
  }

  // Build dynamic field widget based on field type
  Widget _buildDynamicField(CategoryField field) {
    switch (field.fieldType) {
      case 'text':
        return _buildTextField(
          label: field.fieldLabel,
          controller: _model.dynamicTextControllers[field.fieldName],
          focusNode: _model.dynamicFocusNodes[field.fieldName],
          validator: (context, val) => _model.dynamicFieldValidator(field, val),
          hintText: field.placeholder,
          isRequired: field.isRequired,
        );

      case 'number':
        return _buildTextField(
          label: field.fieldLabel,
          controller: _model.dynamicTextControllers[field.fieldName],
          focusNode: _model.dynamicFocusNodes[field.fieldName],
          validator: (context, val) => _model.dynamicFieldValidator(field, val),
          hintText: field.placeholder,
          isRequired: field.isRequired,
        );

      case 'dropdown':
        return _buildDropdown(
          label: field.fieldLabel,
          controller: _model.dynamicDropdownControllers[field.fieldName],
          options: field.dropdownOptions,
          optionLabels: field.dropdownOptions,
          onChanged: (val) => safeSetState(() {
            _model.updateDynamicFieldValue(field.fieldName, val);
          }),
          hintText: field.placeholder ?? 'Select ${field.fieldLabel}',
          isRequired: field.isRequired,
        );

      default:
        return _buildTextField(
          label: field.fieldLabel,
          controller: _model.dynamicTextControllers[field.fieldName],
          focusNode: _model.dynamicFocusNodes[field.fieldName],
          validator: (context, val) => _model.dynamicFieldValidator(field, val),
          hintText: field.placeholder,
          isRequired: field.isRequired,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.centerAppbarModel,
          updateCallback: () => safeSetState(() {}),
          child: const CenterAppbarWidget(
            title: 'Add Product',
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
                scrollDirection: Axis.vertical,
                children: [
                  // IMAGE UPLOAD SECTION
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Upload product images ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.5,
                                ),
                          ),
                          const TextSpan(
                            text: '(max 10 photos)',
                            style: TextStyle(
                              color: Color(0xFFFF5943),
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),

                  // Dynamic Image Upload Row
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Display uploaded images
                        ..._model.uploadedImages.asMap().entries.map((entry) {
                          int index = entry.key;
                          FFUploadedFile image = entry.value;

                          return Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: Stack(
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      safeSetState(() {
                                        _model.removeImage(index);
                                      });
                                    },
                                    child: Container(
                                      width: 88.0,
                                      height: 88.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lightGray,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.memory(
                                          image.bytes ?? Uint8List.fromList([]),
                                          width: 88.0,
                                          height: 88.0,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Icon(
                                            Icons.error,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 4.0,
                                    right: 4.0,
                                    child: Container(
                                      width: 24.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),

                        // Add new image button
                        if (_model.uploadedImages.length < 10)
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 500.00,
                                    maxHeight: 500.00,
                                    allowPhoto: true,
                                  );

                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(
                                        () => _model.isImageUploading = true);

                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      _model.isImageUploading = false;
                                    }

                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.addImage(
                                            selectedUploadedFiles.first);
                                      });
                                    }
                                  }
                                },
                                child: Container(
                                  width: 88.0,
                                  height: 88.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).lightGray,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText
                                          .withOpacity(0.3),
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: _model.isImageUploading
                                      ? Center(
                                          child: SizedBox(
                                            width: 24.0,
                                            height: 24.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              strokeWidth: 2.0,
                                            ),
                                          ),
                                        )
                                      : Icon(
                                          Icons.add_a_photo,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText
                                              .withOpacity(0.6),
                                          size: 32.0,
                                        ),
                                ),
                              ),
                            ),
                          ),
                      ]
                          .divide(const SizedBox(width: 16.0))
                          .addToStart(const SizedBox(width: 16.0))
                          .addToEnd(const SizedBox(width: 16.0)),
                    ),
                  ),

                  // Image count indicator
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 16.0, 16.0),
                    child: Text(
                      '${_model.uploadedImages.length}/10 images uploaded',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Satoshi',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            color: FlutterFlowTheme.of(context)
                                .primaryText
                                .withOpacity(0.7),
                          ),
                    ),
                  ),

                  // CATEGORIES DROPDOWN WITH REAL-TIME UPDATES
                  StatefulBuilder(
                    builder: (context, setStateLocal) {
                      return _buildDropdown(
                        label: 'Choose category',
                        controller: _model.dropDownValueController1 ??=
                            FormFieldController<String>(null),
                        options: _model.isCategoriesLoading
                            ? ['loading']
                            : _model.categories
                                .map<String>((category) =>
                                    category['id']?.toString() ?? '')
                                .toList(),
                        optionLabels: _model.isCategoriesLoading
                            ? ['Loading categories...']
                            : _model.categories
                                .map<String>((category) =>
                                    category['name']?.toString() ?? '')
                                .toList(),
                        onChanged: (val) async {
                          if (val != null && val != 'loading') {
                            // Update local state first
                            setStateLocal(() {
                              _model.onCategoryChanged(val);
                            });

                            // Update main widget state
                            safeSetState(() {});

                            // Wait for category fields to load
                            int attempts = 0;
                            while (_model.isCategoryFieldsLoading &&
                                attempts < 50) {
                              // Max 5 seconds
                              await Future.delayed(
                                  const Duration(milliseconds: 100));
                              attempts++;
                              // Update UI during loading
                              setStateLocal(() {});
                              safeSetState(() {});
                            }

                            // Final UI update after loading completes
                            setStateLocal(() {});
                            safeSetState(() {});

                            // Show notification about loaded fields
                            if (mounted) {
                              if (_model.categoryFields.isNotEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '✅ Loaded ${_model.categoryFields.length} custom fields for ${_model.getCategoryNameById(val)}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'ℹ️ No custom fields found for ${_model.getCategoryNameById(val)}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    backgroundColor: Colors.orange,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              }
                            }
                          }
                        },
                        hintText: _model.isCategoriesLoading
                            ? 'Loading categories...'
                            : 'Select category',
                        isLoading: _model.isCategoriesLoading,
                        isRequired: true,
                      );
                    },
                  ),

                  // Show category fields loading indicator or error message
                  if (_model.selectedCategoryId != null) ...[
                    if (_model.isCategoryFieldsLoading)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primary
                                  .withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                                height: 20.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                  strokeWidth: 2.0,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              Text(
                                'Loading ${_model.getCategoryNameById(_model.selectedCategoryId)} fields...',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    // Show message when no fields are found
                    if (!_model.isCategoryFieldsLoading &&
                        _model.categoryFields.isEmpty)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.orange.withOpacity(0.3),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.orange,
                                size: 20.0,
                              ),
                              const SizedBox(width: 12.0),
                              Expanded(
                                child: Text(
                                  'No custom fields configured for ${_model.getCategoryNameById(_model.selectedCategoryId)}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],

                  // BASIC FIELDS (always shown)
                  _buildTextField(
                    label: 'Product Name',
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    validator: _model.textController1Validator,
                    hintText: 'Enter product name',
                    isRequired: true,
                  ),

                  // Phone number field
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Phone number *',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 16.0, 0.0),
                    child: custom_widgets.CustomLabelCountryCodeWidget(
                      width: double.infinity,
                      height: 54.0,
                      initialValue: '(405) 555-0128',
                      initialCountryCodeLocal: FFAppState().countryName,
                    ),
                  ),

                  _buildTextField(
                    label: 'Price',
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    validator: _model.textController2Validator,
                    hintText: 'Enter product price',
                    isRequired: true,
                  ),

                  _buildTextField(
                    label: 'Description',
                    controller: _model.textController3,
                    focusNode: _model.textFieldFocusNode3,
                    validator: _model.textController3Validator,
                    hintText: 'Enter product description',
                    maxLines: 6,
                    isRequired: true,
                  ),

                  // PRODUCT TYPE DROPDOWN
                  _buildDropdown(
                    label: 'Product Type',
                    controller: _model.dropDownValueController2 ??=
                        FormFieldController<String>(null),
                    options: _model.isProductTypesLoading
                        ? ['loading']
                        : _model.productTypes
                            .map<String>((type) => type['id']?.toString() ?? '')
                            .toList(),
                    optionLabels: _model.isProductTypesLoading
                        ? ['Loading product types...']
                        : _model.productTypes
                            .map<String>(
                                (type) => type['name']?.toString() ?? '')
                            .toList(),
                    onChanged: (val) => safeSetState(() {
                      _model.onProductTypeChanged(val);
                    }),
                    isLoading: _model.isProductTypesLoading,
                  ),

                  // CONDITION DROPDOWN
                  _buildDropdown(
                    label: 'Condition',
                    controller: _model.dropDownValueController3 ??=
                        FormFieldController<String>(null),
                    options: _model.isConditionsLoading
                        ? ['loading']
                        : _model.conditions
                            .map<String>((condition) =>
                                condition['id']?.toString() ?? '')
                            .toList(),
                    optionLabels: _model.isConditionsLoading
                        ? ['Loading conditions...']
                        : _model.conditions
                            .map<String>((condition) =>
                                condition['name']?.toString() ?? '')
                            .toList(),
                    onChanged: (val) => safeSetState(() {
                      _model.onConditionChanged(val);
                    }),
                    isLoading: _model.isConditionsLoading,
                  ),

                  _buildTextField(
                    label: 'Deal option remark',
                    controller: _model.textController4,
                    focusNode: _model.textFieldFocusNode4,
                    validator: _model.textController4Validator,
                    hintText: 'Enter deal option remark',
                    maxLines: 6,
                    isRequired: true,
                  ),

                  // DEAL OPTIONS DROPDOWN
                  _buildDropdown(
                    label: 'Deal option',
                    controller: _model.dropDownValueController4 ??=
                        FormFieldController<String>(null),
                    options: _model.isDealOptionsLoading
                        ? ['loading']
                        : _model.dealOptions
                            .map<String>(
                                (option) => option['id']?.toString() ?? '')
                            .toList(),
                    optionLabels: _model.isDealOptionsLoading
                        ? ['Loading deal options...']
                        : _model.dealOptions
                            .map<String>(
                                (option) => option['name']?.toString() ?? '')
                            .toList(),
                    onChanged: (val) => safeSetState(() {
                      _model.onDealOptionChanged(val);
                    }),
                    isLoading: _model.isDealOptionsLoading,
                  ),

                  // DYNAMIC CATEGORY FIELDS
                  if (_model.categoryFields.isNotEmpty &&
                      !_model.isCategoryFieldsLoading) ...[
                    // Header for category-specific fields
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .primary
                                .withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          '📋 ${_model.getCategoryNameById(_model.selectedCategoryId)} Specifications',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    // Build dynamic fields
                    ..._model.categoryFields
                        .map((field) => _buildDynamicField(field)),
                  ],

                  // COUNTRIES DROPDOWN
                  _buildDropdown(
                    label: 'Country',
                    controller: _model.dropDownValueController5 ??=
                        FormFieldController<String>(null),
                    options: _model.isCountriesLoading
                        ? ['loading']
                        : _model.countries
                            .map<String>(
                                (country) => country['id']?.toString() ?? '')
                            .toList(),
                    optionLabels: _model.isCountriesLoading
                        ? ['Loading countries...']
                        : _model.countries
                            .map<String>(
                                (country) => country['name']?.toString() ?? '')
                            .toList(),
                    onChanged: (val) => safeSetState(() {
                      _model.onCountryChanged(val);
                    }),
                    isLoading: _model.isCountriesLoading,
                  ),

                  // TOWNSHIPS DROPDOWN
                  _buildDropdown(
                    label: 'Township',
                    controller: _model.dropDownValueController6 ??=
                        FormFieldController<String>(null),
                    options: _model.isTownshipsLoading
                        ? ['loading']
                        : _model.selectedCountryId == null
                            ? ['select_country_first']
                            : _model.townships
                                .map<String>((township) =>
                                    township['id']?.toString() ?? '')
                                .toList(),
                    optionLabels: _model.isTownshipsLoading
                        ? ['Loading townships...']
                        : _model.selectedCountryId == null
                            ? ['Please select a country first']
                            : _model.townships
                                .map<String>((township) =>
                                    township['name']?.toString() ?? '')
                                .toList(),
                    onChanged: (val) => safeSetState(() {
                      if (val != 'select_country_first' && val != 'loading') {
                        _model.onTownshipChanged(val);
                      }
                    }),
                    isLoading: _model.isTownshipsLoading,
                    isDisabled: _model.selectedCountryId == null,
                  ),

                  _buildTextField(
                    label: 'Address',
                    controller: _model.textController7,
                    focusNode: _model.textFieldFocusNode7,
                    validator: _model.textController7Validator,
                    hintText: 'Enter your address',
                    maxLines: 3,
                    isRequired: true,
                  ),
                ],
              ),
            ),
          ),
        ),

        // ENHANCED SUBMIT BUTTON
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 24.0),
          child: FFButtonWidget(
            onPressed: _model.isSubmitting
                ? null
                : () async {
                    // Update dynamic field values from controllers
                    for (var field in _model.categoryFields) {
                      if (field.fieldType == 'text' ||
                          field.fieldType == 'number') {
                        final controller =
                            _model.dynamicTextControllers[field.fieldName];
                        if (controller != null) {
                          _model.updateDynamicFieldValue(
                              field.fieldName, controller.text);
                        }
                      }
                    }

                    // Show loading dialog
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                _model.isUploadingImages
                                    ? 'Uploading images...'
                                    : 'Creating product...',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        );
                      },
                    );

                    try {
                      final success = await _model.submitProduct();

                      // Close loading dialog
                      Navigator.of(context).pop();

                      if (success) {
                        print('=== PRODUCT SUBMISSION SUCCESS ===');
                        print('User ID: ${_model.currentUserId}');
                        print('Product Name: ${_model.textController1?.text}');
                        print('Price: ${_model.getPriceValue()}');
                        print(
                            'Category: ${_model.getCategoryNameById(_model.selectedCategoryId)}');
                        print(
                            'Dynamic Fields: ${_model.categoryFields.length}');
                        print(
                            'R2 Images: ${_model.uploadedImageUrls.length} images');
                        print('==================================');

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Product Added Successfully!\n'
                              'Category: ${_model.getCategoryNameById(_model.selectedCategoryId)}\n'
                              'Fields: ${_model.categoryFields.length} custom fields saved',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );

                        _model.resetForm();
                        FFAppState().homePageIndex = 0;
                        safeSetState(() {});
                        context.pushNamed(NavbarWidget.routeName);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              '❌ Failed to add product. Please check your connection and try again.',
                              style: TextStyle(color: Colors.white),
                            ),
                            duration: Duration(milliseconds: 3000),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    } catch (e) {
                      if (Navigator.of(context).canPop()) {
                        Navigator.of(context).pop();
                      }

                      print('🚨 Unexpected error: $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            '🚨 Unexpected error occurred. Please try again.',
                            style: TextStyle(color: Colors.white),
                          ),
                          duration: Duration(milliseconds: 3000),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
            text: _model.isSubmitting
                ? (_model.isUploadingImages
                    ? 'Uploading Images...'
                    : 'Creating Product...')
                : 'Add Product',
            options: FFButtonOptions(
              width: double.infinity,
              height: 54.0,
              padding:
                  const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              iconPadding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: _model.isSubmitting
                  ? FlutterFlowTheme.of(context).secondaryText
                  : FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Satoshi',
                    color: Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    lineHeight: 1.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
