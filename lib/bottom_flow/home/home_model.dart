import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/categorioes_home/categorioes_home_widget.dart';
import '/pages/components/items_component/items_component_widget.dart';
import '/pages/components/topratedseller_com/topratedseller_com_widget.dart';
import '/pages/components/vendor_component/vendor_component_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this component.

  int? carouselIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for CategorioesHome component.
  late CategorioesHomeModel categorioesHomeModel1;
  // Model for CategorioesHome component.
  late CategorioesHomeModel categorioesHomeModel2;
  // Model for CategorioesHome component.
  late CategorioesHomeModel categorioesHomeModel3;
  // Model for CategorioesHome component.
  late CategorioesHomeModel categorioesHomeModel4;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels1;
  // Models for VendorComponent dynamic component.
  late FlutterFlowDynamicModels<VendorComponentModel> vendorComponentModels;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels2;
  // Models for TopratedsellerCom dynamic component.
  late FlutterFlowDynamicModels<TopratedsellerComModel> topratedsellerComModels;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels3;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels4;
  // Models for ItemsComponent dynamic component.
  late FlutterFlowDynamicModels<ItemsComponentModel> itemsComponentModels5;

  @override
  void initState(BuildContext context) {
    categorioesHomeModel1 = createModel(context, () => CategorioesHomeModel());
    categorioesHomeModel2 = createModel(context, () => CategorioesHomeModel());
    categorioesHomeModel3 = createModel(context, () => CategorioesHomeModel());
    categorioesHomeModel4 = createModel(context, () => CategorioesHomeModel());
    itemsComponentModels1 =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
    vendorComponentModels =
        FlutterFlowDynamicModels(() => VendorComponentModel());
    itemsComponentModels2 =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
    topratedsellerComModels =
        FlutterFlowDynamicModels(() => TopratedsellerComModel());
    itemsComponentModels3 =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
    itemsComponentModels4 =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
    itemsComponentModels5 =
        FlutterFlowDynamicModels(() => ItemsComponentModel());
  }

  @override
  void dispose() {
    categorioesHomeModel1.dispose();
    categorioesHomeModel2.dispose();
    categorioesHomeModel3.dispose();
    categorioesHomeModel4.dispose();
    itemsComponentModels1.dispose();
    vendorComponentModels.dispose();
    itemsComponentModels2.dispose();
    topratedsellerComModels.dispose();
    itemsComponentModels3.dispose();
    itemsComponentModels4.dispose();
    itemsComponentModels5.dispose();
  }
}
