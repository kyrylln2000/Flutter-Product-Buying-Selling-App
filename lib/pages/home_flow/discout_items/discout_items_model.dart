import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/index.dart';
import 'discout_items_widget.dart' show DiscoutItemsWidget;
import 'package:flutter/material.dart';

class DiscoutItemsModel extends FlutterFlowModel<DiscoutItemsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    itemsComponentModels =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    itemsComponentModels.dispose();
  }
}
