// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
// import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
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

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProductModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController1?.text = 'iPhone 15 pro max';
          _model.textController2?.text = '\$1500.00';
          _model.textController3?.text =
              'iPhone 15 Pro Max, a titanium marvel, boasts an aerospace-grade build, making it the lightest Pro model ever. The A17 Pro Chip marks a historic leap in Apple GPUs, delivering unparalleled graphics performance and immersive gaming experiences.';
          _model.textController4?.text =
              'The camera system shines with a 48 MP Main camera, offering remarkable detail and automatic portrait enhancements. Convenience is key with the Action button for quick tasks and Focus filters. Plus, it\'s USB 3 compatible.';
          _model.textController5?.text = 'iPhone 15 pro max';
          _model.textController6?.text = '8GB';
          _model.textController7?.text =
              '913 Buckridge Summit, newyork, Florida, USA, 39663-3766';
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
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
                  // DYNAMIC IMAGE UPLOAD SECTION
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Upload property images ',
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
                                  // Image container
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      // Remove image when clicked
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
                                  // Remove button overlay
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

                        // Add new image button (only show if less than 10 images)
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
                                        // Add new image to the list
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

                  // DYNAMIC CATEGORIES DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Choose category',
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
                    child: FlutterFlowDropDown<String>(
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
                      onChanged: (val) => safeSetState(() {
                        _model.onCategoryChanged(val);
                      }),
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isCategoriesLoading
                          ? 'Loading categories...'
                          : 'Select category',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isCategoriesLoading,
                    ),
                  ),

                  // PRODUCT NAME FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Product Name',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter product name',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // PHONE NUMBER FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Phone number',
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

                  // PRICE FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Price',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter product price',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // DESCRIPTION FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Description',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter product description',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              lineHeight: 1.0,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 6,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // PRODUCT TYPE DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Product Type',
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
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController2 ??=
                          FormFieldController<String>(null),
                      options: _model.isProductTypesLoading
                          ? ['loading']
                          : _model.productTypes
                              .map<String>(
                                  (type) => type['id']?.toString() ?? '')
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
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isProductTypesLoading
                          ? 'Loading...'
                          : 'Select product type',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isProductTypesLoading,
                    ),
                  ),

                  // CONDITION DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Condition',
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
                    child: FlutterFlowDropDown<String>(
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
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isConditionsLoading
                          ? 'Loading...'
                          : 'Select condition',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isConditionsLoading,
                    ),
                  ),

                  // DEAL OPTION REMARK FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Deal option remark',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController4,
                        focusNode: _model.textFieldFocusNode4,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter deal option remark',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              lineHeight: 1.0,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 6,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController4Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // DEAL OPTIONS DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Deal option',
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
                    child: FlutterFlowDropDown<String>(
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
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isDealOptionsLoading
                          ? 'Loading...'
                          : 'Select deal option',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isDealOptionsLoading,
                    ),
                  ),

                  // MODEL NO FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Model no',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController5,
                        focusNode: _model.textFieldFocusNode5,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter model no',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController5Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // RAM FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Enter ram',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController6,
                        focusNode: _model.textFieldFocusNode6,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter ram',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController6Validator
                            .asValidator(context),
                      ),
                    ),
                  ),

                  // COUNTRIES DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Country',
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
                    child: FlutterFlowDropDown<String>(
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
                              .map<String>((country) =>
                                  country['name']?.toString() ?? '')
                              .toList(),
                      onChanged: (val) => safeSetState(() {
                        _model.onCountryChanged(val);
                      }),
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isCountriesLoading
                          ? 'Loading...'
                          : 'Select country',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isCountriesLoading,
                    ),
                  ),

                  // TOWNSHIPS DROPDOWN
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Township',
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
                    child: FlutterFlowDropDown<String>(
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
                      width: double.infinity,
                      height: 54.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: _model.isTownshipsLoading
                          ? 'Loading...'
                          : _model.selectedCountryId == null
                              ? 'Select country first'
                              : 'Select township',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 1.0,
                      borderColor: FlutterFlowTheme.of(context).black20,
                      borderWidth: 1.0,
                      borderRadius: 12.0,
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 15.0, 12.0, 15.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                      disabled: _model.isTownshipsLoading ||
                          _model.selectedCountryId == null,
                    ),
                  ),

                  // ADDRESS FIELD
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 16.0, 0.0, 4.0),
                    child: Text(
                      'Address',
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
                    child: SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController7,
                        focusNode: _model.textFieldFocusNode7,
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Enter your address',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.0,
                            ),
                        maxLines: 3,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController7Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // ENHANCED SUBMIT BUTTON WITH COMPLETE R2 + SUPABASE FLOW
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 24.0),
          child: FFButtonWidget(
            onPressed: _model.isSubmitting
                ? null
                : () async {
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
                                    ? 'Uploading images to R2...'
                                    : 'Creating product...',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        );
                      },
                    );

                    try {
                      // Submit the product with R2 upload
                      final success = await _model.submitProduct();

                      // Close loading dialog
                      Navigator.of(context).pop();

                      if (success) {
                        // Debug: Print all submitted data
                        print('=== PRODUCT SUBMISSION SUCCESS ===');
                        print('User ID: ${_model.currentUserId}');
                        print('Product Name: ${_model.textController1?.text}');
                        print('Price: ${_model.getPriceValue()}');
                        print(
                            'Selected Category: ${_model.getCategoryNameById(_model.selectedCategoryId)} (ID: ${_model.selectedCategoryId})');
                        print(
                            'Selected Product Type: ${_model.getProductTypeNameById(_model.selectedProductTypeId)} (ID: ${_model.selectedProductTypeId})');
                        print(
                            'Selected Condition: ${_model.getConditionNameById(_model.selectedConditionId)} (ID: ${_model.selectedConditionId})');
                        print(
                            'Selected Deal Option: ${_model.getDealOptionNameById(_model.selectedDealOptionId)} (ID: ${_model.selectedDealOptionId})');
                        print(
                            'Selected Country: ${_model.getCountryNameById(_model.selectedCountryId)} (ID: ${_model.selectedCountryId})');
                        print(
                            'Selected Township: ${_model.getTownshipNameById(_model.selectedTownshipId)} (ID: ${_model.selectedTownshipId})');
                        print(
                            'R2 Images: ${_model.uploadedImageUrls.length} images');
                        for (var url in _model.uploadedImageUrls) {
                          print('  - $url');
                        }
                        print('==================================');

                        // Show success message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '🎉 Product Added Successfully!\n'
                              '📱 ${_model.textController1?.text}\n'
                              '💰 \${_model.getPriceValue()}\n'
                              '📂 ${_model.getCategoryNameById(_model.selectedCategoryId)}\n'
                              '📍 ${_model.getCountryNameById(_model.selectedCountryId)} - ${_model.getTownshipNameById(_model.selectedTownshipId)}\n'
                              '📸 ${_model.uploadedImageUrls.length} images stored in R2',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );

                        // Reset form
                        _model.resetForm();

                        // Update app state
                        FFAppState().homePageIndex = 0;
                        safeSetState(() {});

                        // Navigate to home/navbar
                        context.pushNamed(NavbarWidget.routeName);
                      } else {
                        // Show error message
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              '❌ Failed to add product. Please check your connection and try again.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            duration: Duration(milliseconds: 3000),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    } catch (e) {
                      // Close loading dialog if still open
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
