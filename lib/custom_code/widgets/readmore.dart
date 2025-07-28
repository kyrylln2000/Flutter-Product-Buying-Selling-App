// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:readmore/readmore.dart';

class Readmore extends StatefulWidget {
  const Readmore({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Readmore> createState() => _ReadmoreState();
}

class _ReadmoreState extends State<Readmore> {
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'Meet the seller in person and transfer cash only if you have secured the item. as a seller, ensure Meet the seller in person and transfer cash only if you have secured the item. as a seller, ensure ',
      style: TextStyle(
          fontFamily: 'Satoshi',
          color: FlutterFlowTheme.of(context).primaryText,
          fontSize: 15,
          fontWeight: FontWeight.w500),
      trimMode: TrimMode.Line,
      trimLines: 2,
      colorClickableText: Color(0xffE75434),
      trimCollapsedText: 'Read more..',
      trimExpandedText: 'Read less',
      lessStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: FlutterFlowTheme.of(context).primary),
      moreStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: FlutterFlowTheme.of(context).primary),
    );
  }
}
