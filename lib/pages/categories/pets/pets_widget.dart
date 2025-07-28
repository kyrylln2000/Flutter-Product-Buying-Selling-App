import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pets_model.dart';
export 'pets_model.dart';

class PetsWidget extends StatefulWidget {
  const PetsWidget({super.key});

  static String routeName = 'Pets';
  static String routePath = '/pets';

  @override
  State<PetsWidget> createState() => _PetsWidgetState();
}

class _PetsWidgetState extends State<PetsWidget> {
  late PetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.mainAppbarModel,
                updateCallback: () => safeSetState(() {}),
                child: MainAppbarWidget(
                  title: 'Pets',
                  isBack: false,
                  isEdit: false,
                  backAction: () async {},
                  editAction: () async {},
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final categories = FFAppState().clothes.toList();

                      return Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children:
                            List.generate(categories.length, (categoriesIndex) {
                          final categoriesItem = categories[categoriesIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                AsusWidget.routeName,
                                queryParameters: {
                                  'title': serializeParam(
                                    categoriesItem.name,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: wrapWithModel(
                              model: _model.categorioesComponentModels.getModel(
                                categoriesIndex.toString(),
                                categoriesIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: CategorioesComponentWidget(
                                key: Key(
                                  'Keyksj_${categoriesIndex.toString()}',
                                ),
                                name: categoriesItem.name,
                                img: categoriesItem.image,
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
