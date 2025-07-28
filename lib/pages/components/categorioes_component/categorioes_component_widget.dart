import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categorioes_component_model.dart';
export 'categorioes_component_model.dart';

class CategorioesComponentWidget extends StatefulWidget {
  const CategorioesComponentWidget({
    super.key,
    required this.name,
    required this.img,
  });

  final String? name;
  final String? img;

  @override
  State<CategorioesComponentWidget> createState() =>
      _CategorioesComponentWidgetState();
}

class _CategorioesComponentWidgetState
    extends State<CategorioesComponentWidget> {
  late CategorioesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategorioesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: () {
        if (MediaQuery.sizeOf(context).width < 810.0) {
          return ((MediaQuery.sizeOf(context).width - 64) * 1 / 3);
        } else if ((MediaQuery.sizeOf(context).width >= 810.0) &&
            (MediaQuery.sizeOf(context).width <= 1280.0)) {
          return ((MediaQuery.sizeOf(context).width - 96) * 1 / 6);
        } else {
          return ((MediaQuery.sizeOf(context).width - 144) * 1 / 9);
        }
      }(),
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lightGray,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            widget!.img!,
            width: 34.0,
            height: 34.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.name,
                'r',
              ),
              maxLines: 1,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Satoshi',
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
