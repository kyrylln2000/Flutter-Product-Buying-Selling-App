import '/backend/schema/structs/index.dart';
import '/bottom_flow/pages/components/main_appbar/main_appbar_widget.dart';
import '/bottom_flow/pages/components/vendor_component/vendor_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'latest_vendor_widget.dart' show LatestVendorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LatestVendorModel extends FlutterFlowModel<LatestVendorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Models for VendorComponent dynamic component.
  late FlutterFlowDynamicModels<VendorComponentModel> vendorComponentModels;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
    vendorComponentModels =
        FlutterFlowDynamicModels(() => VendorComponentModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    vendorComponentModels.dispose();
  }
}
