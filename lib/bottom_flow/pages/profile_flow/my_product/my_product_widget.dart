import '/bottom_flow/pages/components/items_component/items_component_widget.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_product_model.dart';
export 'my_product_model.dart';

class MyProductWidget extends StatefulWidget {
  const MyProductWidget({super.key});

  static String routeName = 'MyProduct';
  static String routePath = '/myProduct';

  @override
  State<MyProductWidget> createState() => _MyProductWidgetState();
}

class _MyProductWidgetState extends State<MyProductWidget> {
  late MyProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProductModel());

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
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Stack(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  children: [
                    wrapWithModel(
                      model: _model.mainAppbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MainAppbarWidget(
                        title: 'My products',
                        isBack: false,
                        isEdit: false,
                        backAction: () async {},
                        editAction: () async {},
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(EditProductWidget.routeName);
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lightGray,
                          shape: BoxShape.circle,
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/add.png',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    16.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final popularList = functions
                                  .filterdata('Popular items',
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
                            children: List.generate(popularList.length,
                                (popularListIndex) {
                              final popularListItem =
                                  popularList[popularListIndex];
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
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        MyProductDetailWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.itemsComponentModels.getModel(
                                      popularListIndex.toString(),
                                      popularListIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemsComponentWidget(
                                      key: Key(
                                        'Keycrc_${popularListIndex.toString()}',
                                      ),
                                      img: popularListItem.img,
                                      name: popularListItem.name,
                                      price: popularListItem.price,
                                      smallimge: popularListItem.smallimg,
                                      firstname: popularListItem.firstname,
                                      countryname: popularListItem.country,
                                      isLike: popularListItem.isfav == true,
                                      isdiscount:
                                          popularListItem.discount == true,
                                      price2: popularListItem.price2,
                                      isLikeTap: () async {
                                        if (popularListItem.isfav == true) {
                                          FFAppState().updateItemsLIstAtIndex(
                                            popularListItem.id,
                                            (e) => e..isfav = false,
                                          );
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().updateItemsLIstAtIndex(
                                            popularListItem.id,
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
