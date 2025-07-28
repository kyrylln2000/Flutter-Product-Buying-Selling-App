import '/backend/schema/structs/index.dart';
import '/bottom_flow/pages/components/items_component/items_component_widget.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recommendedforyou_model.dart';
export 'recommendedforyou_model.dart';

class RecommendedforyouWidget extends StatefulWidget {
  const RecommendedforyouWidget({super.key});

  static String routeName = 'Recommendedforyou';
  static String routePath = '/recommendedforyou';

  @override
  State<RecommendedforyouWidget> createState() =>
      _RecommendedforyouWidgetState();
}

class _RecommendedforyouWidgetState extends State<RecommendedforyouWidget> {
  late RecommendedforyouModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecommendedforyouModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                  title: 'Recommended',
                  isBack: false,
                  isEdit: false,
                  backAction: () async {},
                  editAction: () async {},
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    24.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final recommendedforyou = functions
                                  .filterdata('Recommended for you',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [];

                          return Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(recommendedforyou.length,
                                (recommendedforyouIndex) {
                              final recommendedforyouItem =
                                  recommendedforyou[recommendedforyouIndex];
                              return Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      810.0) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            48) *
                                        1 /
                                        2);
                                  } else if ((MediaQuery.sizeOf(context)
                                              .width <=
                                          810.0) &&
                                      (MediaQuery.sizeOf(context).width >=
                                          1280.0)) {
                                    return ((MediaQuery.sizeOf(context).width -
                                            80) *
                                        1 /
                                        3);
                                  } else {
                                    return ((MediaQuery.sizeOf(context).width -
                                            144) *
                                        1 /
                                        6);
                                  }
                                }(),
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      DetailPageWidget.routeName,
                                      queryParameters: {
                                        'name': serializeParam(
                                          recommendedforyouItem.name,
                                          ParamType.String,
                                        ),
                                        'price': serializeParam(
                                          recommendedforyouItem.price,
                                          ParamType.String,
                                        ),
                                        'county': serializeParam(
                                          recommendedforyouItem.country,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.itemsComponentModels.getModel(
                                      recommendedforyouIndex.toString(),
                                      recommendedforyouIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemsComponentWidget(
                                      key: Key(
                                        'Keyx4k_${recommendedforyouIndex.toString()}',
                                      ),
                                      img: recommendedforyouItem.img,
                                      name: recommendedforyouItem.name,
                                      price: recommendedforyouItem.price,
                                      smallimge: recommendedforyouItem.smallimg,
                                      firstname:
                                          recommendedforyouItem.firstname,
                                      countryname:
                                          recommendedforyouItem.country,
                                      isLike:
                                          recommendedforyouItem.isfav == true,
                                      isdiscount:
                                          recommendedforyouItem.discount ==
                                              true,
                                      price2: recommendedforyouItem.price2,
                                      isLikeTap: () async {
                                        if (recommendedforyouItem.isfav ==
                                            true) {
                                          FFAppState().updateItemsLIstAtIndex(
                                            recommendedforyouItem.id,
                                            (e) => e..isfav = false,
                                          );
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().updateItemsLIstAtIndex(
                                            recommendedforyouItem.id,
                                            (e) => e..isfav = false,
                                          );
                                          safeSetState(() {});
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
