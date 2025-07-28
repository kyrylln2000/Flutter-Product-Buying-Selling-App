// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsModelStruct extends BaseStruct {
  NotificationsModelStruct({
    String? title,
    String? subTitle,
    String? createAt,
  })  : _title = title,
        _subTitle = subTitle,
        _createAt = createAt;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  set subTitle(String? val) => _subTitle = val;

  bool hasSubTitle() => _subTitle != null;

  // "createAt" field.
  String? _createAt;
  String get createAt => _createAt ?? '';
  set createAt(String? val) => _createAt = val;

  bool hasCreateAt() => _createAt != null;

  static NotificationsModelStruct fromMap(Map<String, dynamic> data) =>
      NotificationsModelStruct(
        title: data['title'] as String?,
        subTitle: data['subTitle'] as String?,
        createAt: data['createAt'] as String?,
      );

  static NotificationsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subTitle': _subTitle,
        'createAt': _createAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
        'createAt': serializeParam(
          _createAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationsModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subTitle: deserializeParam(
          data['subTitle'],
          ParamType.String,
          false,
        ),
        createAt: deserializeParam(
          data['createAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsModelStruct &&
        title == other.title &&
        subTitle == other.subTitle &&
        createAt == other.createAt;
  }

  @override
  int get hashCode => const ListEquality().hash([title, subTitle, createAt]);
}

NotificationsModelStruct createNotificationsModelStruct({
  String? title,
  String? subTitle,
  String? createAt,
}) =>
    NotificationsModelStruct(
      title: title,
      subTitle: subTitle,
      createAt: createAt,
    );
