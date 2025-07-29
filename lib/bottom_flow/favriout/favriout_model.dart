import '/bottom_flow/pages/components/center_appbar/center_appbar_widget.dart';
import '/bottom_flow/pages/components/items_component/items_component_widget.dart';
import '/bottom_flow/pages/empty_components/empty_fav/empty_fav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favriout_widget.dart' show FavrioutWidget;
import 'package:flutter/material.dart';

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
