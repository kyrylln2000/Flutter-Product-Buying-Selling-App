import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/categorioes_home/categorioes_home_widget.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/components/topratedseller_com/topratedseller_com_widget.dart';
import '/pages/components/vendor_component/vendor_component_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'stackOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 20.0.ms,
            duration: 300.0.ms,
            begin: 0.15,
            end: 1.0,
          ),
        ],
      ),
      'stackOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 20.0.ms,
            duration: 300.0.ms,
            begin: 0.15,
            end: 1.0,
          ),
        ],
      ),
      'stackOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 20.0.ms,
            duration: 300.0.ms,
            begin: 0.15,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Classified',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(NotificationPageWidget.routeName);
                  },
                  child: Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).lightGray,
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/notification.png',
                        width: 22.0,
                        height: 22.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 8.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(SearchPageWidget.routeName);
              },
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).black20,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/search-normal.png',
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Search here...',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/setting-4.png',
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]
                      .divide(SizedBox(width: 12.0))
                      .addToStart(SizedBox(width: 16.0))
                      .addToEnd(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Container(
                    width: double.infinity,
                    height: 177.0,
                    decoration: BoxDecoration(),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: CarouselSlider(
                                items: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 17.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFC2F2FF),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 20.0, 0.0, 20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Get 25% off on \nfirst order',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 109.0,
                                                      height: 36.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Buy now',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Satoshi',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/b1.png',
                                                width: 194.0,
                                                height: double.infinity,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'stackOnPageLoadAnimation1']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 17.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFECE3FF),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 20.0, 0.0, 20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Get 25% off on \nfirst order',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 109.0,
                                                      height: 36.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Buy now',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Satoshi',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              lineHeight: 1.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/b2.png',
                                                width: 194.0,
                                                height: double.infinity,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'stackOnPageLoadAnimation2']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 17.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDE8FE),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 20.0, 0.0, 20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Get 25% off on \nfirst order',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Satoshi',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 109.0,
                                                      height: 36.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Buy now',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Satoshi',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/b3.png',
                                                width: 194.0,
                                                height: double.infinity,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'stackOnPageLoadAnimation3']!),
                                  ),
                                ],
                                carouselController:
                                    _model.carouselController ??=
                                        CarouselSliderController(),
                                options: CarouselOptions(
                                  initialPage: 0,
                                  viewportFraction: 1.0,
                                  disableCenter: true,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.1,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 600),
                                  autoPlayInterval:
                                      Duration(milliseconds: (600 + 2000)),
                                  autoPlayCurve: Curves.linear,
                                  pauseAutoPlayInFiniteScroll: true,
                                  onPageChanged: (index, _) async {
                                    _model.carouselCurrentIndex = index;
                                    _model.carouselIndex =
                                        _model.carouselCurrentIndex;
                                    _model.updatePage(() {});

                                    _model.updatePage(() {});
                                  },
                                ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final dotsList = List.generate(
                                      random_data.randomInteger(3, 4),
                                      (index) =>
                                          random_data.randomName(true, false))
                                  .toList()
                                  .take(3)
                                  .toList();

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: List.generate(dotsList.length,
                                    (dotsListIndex) {
                                  final dotsListItem = dotsList[dotsListIndex];
                                  return Container(
                                    width: dotsListIndex ==
                                            _model.carouselCurrentIndex
                                        ? 16.0
                                        : 6.0,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      color: dotsListIndex ==
                                              _model.carouselCurrentIndex
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondary,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  );
                                }).divide(SizedBox(width: 4.0)),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories ',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(CategoriesPageWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                          model: _model.categorioesHomeModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: CategorioesHomeWidget(
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
                          model: _model.categorioesHomeModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: CategorioesHomeWidget(
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
                          model: _model.categorioesHomeModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: CategorioesHomeWidget(
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
                          model: _model.categorioesHomeModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: CategorioesHomeWidget(
                            name: 'Shoes',
                            img:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fsovaulpyqdl/cat4.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular items',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(PopularItemsWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final popluarList = (functions
                                  .filterdata('Popular items',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [])
                          .take(2)
                          .toList();

                      return Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(popluarList.length,
                            (popluarListIndex) {
                          final popluarListItem = popluarList[popluarListIndex];
                          return Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width < 810.0) {
                                return ((MediaQuery.sizeOf(context).width -
                                        48) *
                                    1 /
                                    2);
                              } else if ((MediaQuery.sizeOf(context).width <=
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
                                      popluarListItem.name,
                                      ParamType.String,
                                    ),
                                    'price': serializeParam(
                                      popluarListItem.price,
                                      ParamType.String,
                                    ),
                                    'county': serializeParam(
                                      popluarListItem.country,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: wrapWithModel(
                                model: _model.itemsComponentModels1.getModel(
                                  popluarListIndex.toString(),
                                  popluarListIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ItemsComponentWidget(
                                  key: Key(
                                    'Keypn1_${popluarListIndex.toString()}',
                                  ),
                                  img: popluarListItem.img,
                                  name: popluarListItem.name,
                                  price: popluarListItem.price,
                                  smallimge: popluarListItem.smallimg,
                                  firstname: popluarListItem.firstname,
                                  countryname: popluarListItem.country,
                                  isLike: popluarListItem.isfav == true,
                                  isdiscount: popluarListItem.discount == true,
                                  price2: popluarListItem.price2,
                                  isLikeTap: () async {
                                    if (popluarListItem.isfav == true) {
                                      FFAppState().updateItemsLIstAtIndex(
                                        popluarListItem.id,
                                        (e) => e..isfav = false,
                                      );
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().updateItemsLIstAtIndex(
                                        popluarListItem.id,
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest vendor',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(LatestVendorWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final vendorList =
                          FFAppState().vandorList.toList().take(2).toList();

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
                            List.generate(vendorList.length, (vendorListIndex) {
                          final vendorListItem = vendorList[vendorListIndex];
                          return Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width < 810.0) {
                                return ((MediaQuery.sizeOf(context).width -
                                        48) *
                                    1 /
                                    2);
                              } else if ((MediaQuery.sizeOf(context).width <=
                                      810.0) &&
                                  (MediaQuery.sizeOf(context).width >=
                                      1280.0)) {
                                return ((MediaQuery.sizeOf(context).width -
                                        80) *
                                    1 /
                                    4);
                              } else {
                                return ((MediaQuery.sizeOf(context).width -
                                        144) *
                                    1 /
                                    8);
                              }
                            }(),
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.vendorComponentModels.getModel(
                                vendorListIndex.toString(),
                                vendorListIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: VendorComponentWidget(
                                key: Key(
                                  'Keyvlo_${vendorListIndex.toString()}',
                                ),
                                img: vendorListItem.img,
                                name: vendorListItem.name,
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended for you',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(RecommendedforyouWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final recommendedforyou = (functions
                                  .filterdata('Recommended for you',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [])
                          .take(2)
                          .toList();

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
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width < 810.0) {
                                  return ((MediaQuery.sizeOf(context).width -
                                          48) *
                                      1 /
                                      2);
                                } else if ((MediaQuery.sizeOf(context).width <=
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
                                  model: _model.itemsComponentModels2.getModel(
                                    recommendedforyouIndex.toString(),
                                    recommendedforyouIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemsComponentWidget(
                                    key: Key(
                                      'Keyqqq_${recommendedforyouIndex.toString()}',
                                    ),
                                    img: recommendedforyouItem.img,
                                    name: recommendedforyouItem.name,
                                    price: recommendedforyouItem.price,
                                    smallimge: recommendedforyouItem.smallimg,
                                    firstname: recommendedforyouItem.firstname,
                                    countryname: recommendedforyouItem.country,
                                    isLike: recommendedforyouItem.isfav == true,
                                    isdiscount:
                                        recommendedforyouItem.discount == true,
                                    price2: recommendedforyouItem.price2,
                                    isLikeTap: () async {
                                      if (recommendedforyouItem.isfav == true) {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = true,
                                        );
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
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
                            'iPhone 15 pro max ',
                            ParamType.String,
                          ),
                          'price': serializeParam(
                            '\$1500.00',
                            ParamType.String,
                          ),
                          'county': serializeParam(
                            'New york',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Sub_banner.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start selling and achieve\nyour business goals.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 166.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Become a vendor',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 13.0))
                              .addToStart(SizedBox(height: 21.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top rated seller',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(TopratedsellerWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Builder(
                    builder: (context) {
                      final topseller =
                          FFAppState().Topratedseller.toList().take(2).toList();

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
                            List.generate(topseller.length, (topsellerIndex) {
                          final topsellerItem = topseller[topsellerIndex];
                          return Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width < 810.0) {
                                return ((MediaQuery.sizeOf(context).width -
                                        48) *
                                    1 /
                                    2);
                              } else if ((MediaQuery.sizeOf(context).width <=
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
                            child: wrapWithModel(
                              model: _model.topratedsellerComModels.getModel(
                                topsellerIndex.toString(),
                                topsellerIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: TopratedsellerComWidget(
                                key: Key(
                                  'Keyud1_${topsellerIndex.toString()}',
                                ),
                                img: topsellerItem.img,
                                name: topsellerItem.name,
                                items: topsellerItem.items,
                                followers: topsellerItem.followers,
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount items',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(DiscoutItemsWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final recommendedforyou = (functions
                                  .filterdata('Discount items',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [])
                          .take(2)
                          .toList();

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
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width < 810.0) {
                                  return ((MediaQuery.sizeOf(context).width -
                                          48) *
                                      1 /
                                      2);
                                } else if ((MediaQuery.sizeOf(context).width <=
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
                                  model: _model.itemsComponentModels3.getModel(
                                    recommendedforyouIndex.toString(),
                                    recommendedforyouIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemsComponentWidget(
                                    key: Key(
                                      'Keylao_${recommendedforyouIndex.toString()}',
                                    ),
                                    img: recommendedforyouItem.img,
                                    name: recommendedforyouItem.name,
                                    price: recommendedforyouItem.price,
                                    smallimge: recommendedforyouItem.smallimg,
                                    firstname: recommendedforyouItem.firstname,
                                    countryname: recommendedforyouItem.country,
                                    isLike: recommendedforyouItem.isfav == true,
                                    isdiscount:
                                        recommendedforyouItem.discount == true,
                                    price2: recommendedforyouItem.price2,
                                    isLikeTap: () async {
                                      if (recommendedforyouItem.isfav == true) {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = true,
                                        );
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured products',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(FeaturedproductsWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final recommendedforyou = (functions
                                  .filterdata('Featured products',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [])
                          .take(2)
                          .toList();

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
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width < 810.0) {
                                  return ((MediaQuery.sizeOf(context).width -
                                          48) *
                                      1 /
                                      2);
                                } else if ((MediaQuery.sizeOf(context).width <=
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
                                  model: _model.itemsComponentModels4.getModel(
                                    recommendedforyouIndex.toString(),
                                    recommendedforyouIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemsComponentWidget(
                                    key: Key(
                                      'Key6bq_${recommendedforyouIndex.toString()}',
                                    ),
                                    img: recommendedforyouItem.img,
                                    name: recommendedforyouItem.name,
                                    price: recommendedforyouItem.price,
                                    smallimge: recommendedforyouItem.smallimg,
                                    firstname: recommendedforyouItem.firstname,
                                    countryname: recommendedforyouItem.country,
                                    isLike: recommendedforyouItem.isfav == true,
                                    isdiscount:
                                        recommendedforyouItem.discount == true,
                                    price2: recommendedforyouItem.price2,
                                    isLikeTap: () async {
                                      if (recommendedforyouItem.isfav == true) {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateItemsLIstAtIndex(
                                          recommendedforyouItem.id,
                                          (e) => e..isfav = true,
                                        );
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount products',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(DiscountProductsWidget.routeName);
                        },
                        child: Text(
                          'View all',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final discountitem = (functions
                                  .filterdata('Discount product',
                                      FFAppState().itemsLIst.toList())
                                  ?.toList() ??
                              [])
                          .take(2)
                          .toList();

                      return Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(discountitem.length,
                            (discountitemIndex) {
                          final discountitemItem =
                              discountitem[discountitemIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width < 810.0) {
                                  return ((MediaQuery.sizeOf(context).width -
                                          48) *
                                      1 /
                                      2);
                                } else if ((MediaQuery.sizeOf(context).width <=
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
                                        discountitemItem.name,
                                        ParamType.String,
                                      ),
                                      'price': serializeParam(
                                        discountitemItem.price,
                                        ParamType.String,
                                      ),
                                      'county': serializeParam(
                                        discountitemItem.country,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.itemsComponentModels5.getModel(
                                    discountitemIndex.toString(),
                                    discountitemIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemsComponentWidget(
                                    key: Key(
                                      'Keyei9_${discountitemIndex.toString()}',
                                    ),
                                    img: discountitemItem.img,
                                    name: discountitemItem.name,
                                    price: discountitemItem.price,
                                    smallimge: discountitemItem.smallimg,
                                    firstname: discountitemItem.firstname,
                                    countryname: discountitemItem.country,
                                    isLike: discountitemItem.isfav == true,
                                    isdiscount:
                                        discountitemItem.discount == true,
                                    price2: discountitemItem.price2,
                                    isLikeTap: () async {
                                      if (discountitemItem.isfav == true) {
                                        FFAppState().updateItemsLIstAtIndex(
                                          discountitemItem.id,
                                          (e) => e..isfav = false,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().updateItemsLIstAtIndex(
                                          discountitemItem.id,
                                          (e) => e..isfav = true,
                                        );
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
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
        ].addToStart(SizedBox(height: 16.0)),
      ),
    );
  }
}
