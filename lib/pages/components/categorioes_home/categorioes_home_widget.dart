import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'categorioes_home_model.dart';
export 'categorioes_home_model.dart';

class CategorioesHomeWidget extends StatefulWidget {
  const CategorioesHomeWidget({
    super.key,
    required this.name,
    required this.img,
  });

  final String? name;
  final String? img;

  @override
  State<CategorioesHomeWidget> createState() => _CategorioesHomeWidgetState();
}

class _CategorioesHomeWidgetState extends State<CategorioesHomeWidget> {
  late CategorioesHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategorioesHomeModel());
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
          return ((MediaQuery.sizeOf(context).width - 80) * 1 / 4);
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.img!,
              width: 34.0,
              height: 34.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.name,
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
      ),
    );
  }
}
