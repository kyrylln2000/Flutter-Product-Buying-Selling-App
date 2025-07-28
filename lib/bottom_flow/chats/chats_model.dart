import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/center_appbar/center_appbar_widget.dart';
import '/pages/components/chat_list/chat_list_widget.dart';
import '/pages/empty_components/no_chat_component/no_chat_component_widget.dart';
import 'chats_widget.dart' show ChatsWidget;
import 'package:flutter/material.dart';

class ChatsModel extends FlutterFlowModel<ChatsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CenterAppbar component.
  late CenterAppbarModel centerAppbarModel;
  // Model for ChatList component.
  late ChatListModel chatListModel;
  // Model for NoChatComponent component.
  late NoChatComponentModel noChatComponentModel;

  @override
  void initState(BuildContext context) {
    centerAppbarModel = createModel(context, () => CenterAppbarModel());
    chatListModel = createModel(context, () => ChatListModel());
    noChatComponentModel = createModel(context, () => NoChatComponentModel());
  }

  @override
  void dispose() {
    centerAppbarModel.dispose();
    chatListModel.dispose();
    noChatComponentModel.dispose();
  }
}
