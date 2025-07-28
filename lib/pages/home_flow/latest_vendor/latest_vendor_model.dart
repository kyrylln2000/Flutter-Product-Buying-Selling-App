import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/main_appbar/main_appbar_widget.dart';
import '/pages/components/vendor_component/vendor_component_widget.dart';
import 'latest_vendor_widget.dart' show LatestVendorWidget;
import 'package:flutter/material.dart';

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
