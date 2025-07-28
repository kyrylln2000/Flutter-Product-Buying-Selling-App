import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/center_appbar/center_appbar_widget.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/empty_components/empty_fav/empty_fav_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favriout_model.dart';
export 'favriout_model.dart';

class FavrioutWidget extends StatefulWidget {
  const FavrioutWidget({super.key});

  @override
  State<FavrioutWidget> createState() => _FavrioutWidgetState();
}

class _FavrioutWidgetState extends State<FavrioutWidget> {
  late FavrioutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavrioutModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        wrapWithModel(
          model: _model.centerAppbarModel,
          updateCallback: () => safeSetState(() {}),
          child: CenterAppbarWidget(
            title: 'Favorite',
          ),
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              if (FFAppState()
                  .itemsLIst
                  .where((e) => e.isfav == true)
                  .toList()
                  .isNotEmpty) {
                return ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                      child: Builder(
                        builder: (context) {
                          final favlist = FFAppState()
                              .itemsLIst
                              .where((e) => e.isfav)
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
                            children:
                                List.generate(favlist.length, (favlistIndex) {
                              final favlistItem = favlist[favlistIndex];
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
                                          favlistItem.name,
                                          ParamType.String,
                                        ),
                                        'price': serializeParam(
                                          favlistItem.price,
                                          ParamType.String,
                                        ),
                                        'county': serializeParam(
                                          favlistItem.country,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.itemsComponentModels.getModel(
                                      favlistIndex.toString(),
                                      favlistIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemsComponentWidget(
                                      key: Key(
                                        'Key0lz_${favlistIndex.toString()}',
                                      ),
                                      img: favlistItem.img,
                                      name: favlistItem.name,
                                      price: favlistItem.price,
                                      smallimge: favlistItem.smallimg,
                                      firstname: favlistItem.firstname,
                                      countryname: favlistItem.country,
                                      isLike: favlistItem.isfav == true,
                                      isdiscount: favlistItem.discount == true,
                                      price2: favlistItem.price2,
                                      isLikeTap: () async {
                                        if (favlistItem.isfav == true) {
                                          FFAppState().updateItemsLIstAtIndex(
                                            favlistItem.id,
                                            (e) => e..isfav = false,
                                          );
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().updateItemsLIstAtIndex(
                                            favlistIndex,
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
                );
              } else {
                return wrapWithModel(
                  model: _model.emptyFavModel,
                  updateCallback: () => safeSetState(() {}),
                  child: EmptyFavWidget(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
