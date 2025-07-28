import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/center_appbar/center_appbar_widget.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/empty_components/empty_fav/empty_fav_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'favriout_widget.dart' show FavrioutWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavrioutModel extends FlutterFlowModel<FavrioutWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CenterAppbar component.
  late CenterAppbarModel centerAppbarModel;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels;
  // Model for EmptyFav component.
  late EmptyFavModel emptyFavModel;

  @override
  void initState(BuildContext context) {
    centerAppbarModel = createModel(context, () => CenterAppbarModel());
    itemsComponentModels =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
    emptyFavModel = createModel(context, () => EmptyFavModel());
  }

  @override
  void dispose() {
    centerAppbarModel.dispose();
    itemsComponentModels.dispose();
    emptyFavModel.dispose();
  }
}
