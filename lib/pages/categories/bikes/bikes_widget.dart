import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bikes_model.dart';
export 'bikes_model.dart';

class BikesWidget extends StatefulWidget {
  const BikesWidget({super.key});

  static String routeName = 'Bikes';
  static String routePath = '/bikes';

  @override
  State<BikesWidget> createState() => _BikesWidgetState();
}

class _BikesWidgetState extends State<BikesWidget> {
  late BikesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BikesModel());
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
                  title: 'Bikes',
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
                      final categories = FFAppState().bikes.toList();

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
                                  'Keyr2m_${categoriesIndex.toString()}',
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
