import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'no_chat_component_model.dart';
export 'no_chat_component_model.dart';

class NoChatComponentWidget extends StatefulWidget {
  const NoChatComponentWidget({super.key});

  @override
  State<NoChatComponentWidget> createState() => _NoChatComponentWidgetState();
}

class _NoChatComponentWidgetState extends State<NoChatComponentWidget> {
  late NoChatComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoChatComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(36.0, 0.0, 36.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/nochat.png',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
              child: Text(
                'No chats yet',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Satoshi',
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.5,
                    ),
              ),
            ),
            Text(
              'Your chats list is empty, please \ngo to home ',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Satoshi',
                    fontSize: 17.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.5,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(NavbarWidget.routeName);

                  FFAppState().homePageIndex = 0;
                  safeSetState(() {});
                },
                text: 'Go to home',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 54.0,
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
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
        ),
      ),
    );
  }
}
