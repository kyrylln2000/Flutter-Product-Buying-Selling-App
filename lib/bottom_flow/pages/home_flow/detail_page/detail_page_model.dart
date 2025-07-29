import '/bottom_flow/pages/components/items_component/items_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detail_page_widget.dart' show DetailPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DetailPageModel extends FlutterFlowModel<DetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels;

  @override
  void initState(BuildContext context) {
    itemsComponentModels =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    itemsComponentModels.dispose();
  }
}
