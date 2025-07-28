import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/center_appbar/center_appbar_widget.dart';
import '/pages/components/chat_list/chat_list_widget.dart';
import '/pages/empty_components/no_chat_component/no_chat_component_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chats_model.dart';
export 'chats_model.dart';

class ChatsWidget extends StatefulWidget {
  const ChatsWidget({super.key});

  @override
  State<ChatsWidget> createState() => _ChatsWidgetState();
}

class _ChatsWidgetState extends State<ChatsWidget> {
  late ChatsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        wrapWithModel(
          model: _model.centerAppbarModel,
          updateCallback: () => safeSetState(() {}),
          child: CenterAppbarWidget(
            title: 'Chats',
          ),
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              if (FFAppState().isLogin == true) {
                return wrapWithModel(
                  model: _model.chatListModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ChatListWidget(),
                );
              } else {
                return wrapWithModel(
                  model: _model.noChatComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NoChatComponentWidget(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
