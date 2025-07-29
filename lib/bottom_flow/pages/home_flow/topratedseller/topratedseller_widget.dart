import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/bottom_flow/pages/components/topratedseller_com/topratedseller_com_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'topratedseller_model.dart';
export 'topratedseller_model.dart';

class TopratedsellerWidget extends StatefulWidget {
  const TopratedsellerWidget({super.key});

  static String routeName = 'Topratedseller';
  static String routePath = '/topratedseller';

  @override
  State<TopratedsellerWidget> createState() => _TopratedsellerWidgetState();
}

class _TopratedsellerWidgetState extends State<TopratedsellerWidget> {
  late TopratedsellerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopratedsellerModel());

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
                        title: 'Latest vendor',
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
                        context.pushNamed(FilterWidget.routeName);
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
                            'assets/images/filter.png',
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
                    8.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Builder(
                        builder: (context) {
                          final vendorList =
                              FFAppState().Topratedseller.toList();

                          return Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(vendorList.length,
                                (vendorListIndex) {
                              final vendorListItem =
                                  vendorList[vendorListIndex];
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
                                child: wrapWithModel(
                                  model:
                                      _model.topratedsellerComModels.getModel(
                                    vendorListIndex.toString(),
                                    vendorListIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: TopratedsellerComWidget(
                                    key: Key(
                                      'Keyoe6_${vendorListIndex.toString()}',
                                    ),
                                    img: vendorListItem.img,
                                    name: vendorListItem.name,
                                    items: vendorListItem.items,
                                    followers: vendorListItem.followers,
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
