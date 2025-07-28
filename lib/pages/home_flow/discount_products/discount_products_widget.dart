import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'discount_products_model.dart';
export 'discount_products_model.dart';

class DiscountProductsWidget extends StatefulWidget {
  const DiscountProductsWidget({super.key});

  static String routeName = 'DiscountProducts';
  static String routePath = '/discountProducts';

  @override
  State<DiscountProductsWidget> createState() => _DiscountProductsWidgetState();
}

class _DiscountProductsWidgetState extends State<DiscountProductsWidget> {
  late DiscountProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscountProductsModel());
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
                  title: 'Discount products',
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
                          final discountList = functions
                                  .filterdata('Discount product',
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
                            children: List.generate(discountList.length,
                                (discountListIndex) {
                              final discountListItem =
                                  discountList[discountListIndex];
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
                                          discountListItem.name,
                                          ParamType.String,
                                        ),
                                        'price': serializeParam(
                                          discountListItem.price,
                                          ParamType.String,
                                        ),
                                        'county': serializeParam(
                                          discountListItem.country,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.itemsComponentModels.getModel(
                                      discountListIndex.toString(),
                                      discountListIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemsComponentWidget(
                                      key: Key(
                                        'Key0io_${discountListIndex.toString()}',
                                      ),
                                      img: discountListItem.img,
                                      name: discountListItem.name,
                                      price: discountListItem.price,
                                      smallimge: discountListItem.smallimg,
                                      firstname: discountListItem.firstname,
                                      countryname: discountListItem.country,
                                      isLike: discountListItem.isfav == true,
                                      isdiscount:
                                          discountListItem.discount == true,
                                      price2: discountListItem.price2,
                                      isLikeTap: () async {
                                        if (discountListItem.isfav == true) {
                                          FFAppState().updateItemsLIstAtIndex(
                                            discountListItem.id,
                                            (e) => e..isfav = false,
                                          );
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().updateItemsLIstAtIndex(
                                            discountListItem.id,
                                            (e) => e..isfav = true,
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
