// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsModelStruct extends BaseStruct {
  ChatsModelStruct({
    String? image,
    String? name,
    String? chat,
    String? lastCreateAt,
  })  : _image = image,
        _name = name,
        _chat = chat,
        _lastCreateAt = lastCreateAt;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "chat" field.
  String? _chat;
  String get chat => _chat ?? '';
  set chat(String? val) => _chat = val;

  bool hasChat() => _chat != null;

  // "lastCreateAt" field.
  String? _lastCreateAt;
  String get lastCreateAt => _lastCreateAt ?? '';
  set lastCreateAt(String? val) => _lastCreateAt = val;

  bool hasLastCreateAt() => _lastCreateAt != null;

  static ChatsModelStruct fromMap(Map<String, dynamic> data) =>
      ChatsModelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        chat: data['chat'] as String?,
        lastCreateAt: data['lastCreateAt'] as String?,
      );

  static ChatsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'chat': _chat,
        'lastCreateAt': _lastCreateAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'chat': serializeParam(
          _chat,
          ParamType.String,
        ),
        'lastCreateAt': serializeParam(
          _lastCreateAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatsModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatsModelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        chat: deserializeParam(
          data['chat'],
          ParamType.String,
          false,
        ),
        lastCreateAt: deserializeParam(
          data['lastCreateAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatsModelStruct &&
        image == other.image &&
        name == other.name &&
        chat == other.chat &&
        lastCreateAt == other.lastCreateAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, name, chat, lastCreateAt]);
}

ChatsModelStruct createChatsModelStruct({
  String? image,
  String? name,
  String? chat,
  String? lastCreateAt,
}) =>
    ChatsModelStruct(
      image: image,
      name: name,
      chat: chat,
      lastCreateAt: lastCreateAt,
    );
