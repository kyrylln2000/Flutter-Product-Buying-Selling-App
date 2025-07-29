import '/bottom_flow/pages/empty_components/no_search_component/no_search_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NoSearchComponent component.
  late NoSearchComponentModel noSearchComponentModel;

  @override
  void initState(BuildContext context) {
    noSearchComponentModel =
        createModel(context, () => NoSearchComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    noSearchComponentModel.dispose();
  }
}
