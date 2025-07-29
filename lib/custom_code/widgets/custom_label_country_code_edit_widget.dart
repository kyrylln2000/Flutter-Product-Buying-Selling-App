// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom widgets
// Imports custom actions
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart';

class CustomLabelCountryCodeEditWidget extends StatefulWidget {
  const CustomLabelCountryCodeEditWidget({
    super.key,
    this.width,
    this.height,
    this.initialValue,
    this.code,
  });

  final double? width;
  final double? height;
  final String? initialValue;
  final String? code;

  @override
  State<CustomLabelCountryCodeEditWidget> createState() =>
      _CustomLabelCountryCodeEditWidgetState();
}

class _CustomLabelCountryCodeEditWidgetState
    extends State<CustomLabelCountryCodeEditWidget> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      showCountryFlag: false,
      autofocus: false,
      dropdownIcon: Icon(
        Icons.keyboard_arrow_down,
        size: 12,
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'SF Pro Display',
            fontSize: 16,
            letterSpacing: 0.0,
            useGoogleFonts: false,
          ),
      dropdownIconPosition: IconPosition.trailing,
      dropdownTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'SF Pro Display',
            fontSize: 16,
            letterSpacing: 0.0,
            useGoogleFonts: false,
          ),
      dropdownDecoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10)),
      initialValue: widget.initialValue,
      flagsButtonMargin: const EdgeInsets.only(left: 16),
      keyboardType: TextInputType.phone,
      cursorColor: FlutterFlowTheme.of(context).primaryText,
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
      decoration: InputDecoration(
        alignLabelWithHint: false,

        hintText: 'Phone number',
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'SF UI Text',
              fontSize: 17.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.normal,
              useGoogleFonts: false,
              lineHeight: 1.0,
            ),
        counterText: '',

        // errorText: 'Please enter valid number ',
        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'SF UI Text',
              color: FlutterFlowTheme.of(context).error,
              fontSize: 15.0,
              letterSpacing: 0.0,
              useGoogleFonts: false,
              lineHeight: 1.0,
            ),
        contentPadding:
            const EdgeInsetsDirectional.fromSTEB(16.0, 16.5, 16.0, 16.5),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText, width: 1)),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).error,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).black20,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText, width: 1)),
      ),
      initialCountryCode: widget.code!,
      // ignore: avoid_types_as_parameter_names
      validator: (num) {
        return "Please enter valid number.";
      },
      invalidNumberMessage: "Please enter valid phone number.",
      onChanged: (value) {
        FFAppState().countryCodeEdit = value.countryCode.replaceAll("+", '');
        FFAppState().update(() {
          FFAppState().phone = value.number;
        });
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onCountryChanged: (value) {
        FFAppState().update(() {
          FFAppState().countryCodeEdit = value.dialCode.toString();
        });
      },
    );
  }
}
