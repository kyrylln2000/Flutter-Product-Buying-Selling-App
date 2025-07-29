import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'empty_fav_model.dart';
export 'empty_fav_model.dart';

class EmptyFavWidget extends StatefulWidget {
  const EmptyFavWidget({super.key});

  @override
  State<EmptyFavWidget> createState() => _EmptyFavWidgetState();
}

class _EmptyFavWidgetState extends State<EmptyFavWidget> {
  late EmptyFavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyFavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 35.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/no_fav.png',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 16.0),
              child: AutoSizeText(
                'No favorite yet',
                textAlign: TextAlign.center,
                maxLines: 1,
                minFontSize: 18.0,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Satoshi',
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.5,
                    ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 28.0),
              child: AutoSizeText(
                'Your favorite list is empty please wait for some time and go to home ',
                textAlign: TextAlign.center,
                maxLines: 2,
                minFontSize: 15.0,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Satoshi',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      lineHeight: 1.5,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(NavbarWidget.routeName);

                FFAppState().homePageIndex = 0;
                safeSetState(() {});
              },
              text: 'Go to home',
              options: FFButtonOptions(
                width: 250.0,
                height: 54.0,
                padding:
                    const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                iconPadding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
          ],
        ),
      ),
    );
  }
}
