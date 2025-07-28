import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'discount_products_widget.dart' show DiscountProductsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiscountProductsModel extends FlutterFlowModel<DiscountProductsWidget> {
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
