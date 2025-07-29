import '/bottom_flow/pages/components/categorioes_component/categorioes_component_widget.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'categories_page_model.dart';
export 'categories_page_model.dart';

class CategoriesPageWidget extends StatefulWidget {
  const CategoriesPageWidget({super.key});

  static String routeName = 'CategoriesPage';
  static String routePath = '/categoriesPage';

  @override
  State<CategoriesPageWidget> createState() => _CategoriesPageWidgetState();
}

class _CategoriesPageWidgetState extends State<CategoriesPageWidget> {
  late CategoriesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  title: 'Categories',
                  isBack: false,
                  isEdit: false,
                  backAction: () async {},
                  editAction: () async {},
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0, 16.0, 16.0, 0.0),
                  child: Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(LeptopWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Laptop',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6efy3tjw6o9p/cat1.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(PhoneWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Phone ',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tevih0x2tbs2/cat2.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ClothesWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Clothes',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/2zxiey7jve4s/cat3.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ShoesWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Shoes',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fsovaulpyqdl/cat4.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(PetsWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Pets',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1e6p2jeoo3yu/cat5.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ToysWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Toys',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/94gmgqvq7a8z/cat6.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(CarsWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Cars',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fw3zwi8vlnfe/cat7.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(RealestateWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel8,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Real estate',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/4t76meftluvf/cat8.png',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(BikesWidget.routeName);
                        },
                        child: wrapWithModel(
                          model: _model.categorioesComponentModel9,
                          updateCallback: () => safeSetState(() {}),
                          child: const CategorioesComponentWidget(
                            name: 'Bikes',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tui831jgsznv/cat9.png',
                          ),
                        ),
                      ),
                    ],
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
