import '/bottom_flow/add_product/add_product_widget.dart';
import '/bottom_flow/chats/chats_widget.dart';
import '/bottom_flow/favriout/favriout_widget.dart';
import '/bottom_flow/home/home_widget.dart';
import '/bottom_flow/profile/profile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'navbar_widget.dart' show NavbarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavbarModel extends FlutterFlowModel<NavbarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Home component.
  late HomeModel homeModel;
  // Model for Chats component.
  late ChatsModel chatsModel;
  // Model for AddProduct component.
  late AddProductModel addProductModel;
  // Model for Favriout component.
  late FavrioutModel favrioutModel;
  // Model for Profile component.
  late ProfileModel profileModel;

  @override
  void initState(BuildContext context) {
    homeModel = createModel(context, () => HomeModel());
    chatsModel = createModel(context, () => ChatsModel());
    addProductModel = createModel(context, () => AddProductModel());
    favrioutModel = createModel(context, () => FavrioutModel());
    profileModel = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    homeModel.dispose();
    chatsModel.dispose();
    addProductModel.dispose();
    favrioutModel.dispose();
    profileModel.dispose();
  }
}
