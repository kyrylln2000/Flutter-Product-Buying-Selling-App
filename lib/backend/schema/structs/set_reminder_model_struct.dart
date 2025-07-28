// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetReminderModelStruct extends BaseStruct {
  SetReminderModelStruct({
    DateTime? time,
    bool? isRemind,
  })  : _time = time,
        _isRemind = isRemind;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;

  bool hasTime() => _time != null;

  // "isRemind" field.
  bool? _isRemind;
  bool get isRemind => _isRemind ?? false;
  set isRemind(bool? val) => _isRemind = val;

  bool hasIsRemind() => _isRemind != null;

  static SetReminderModelStruct fromMap(Map<String, dynamic> data) =>
      SetReminderModelStruct(
        time: data['time'] as DateTime?,
        isRemind: data['isRemind'] as bool?,
      );

  static SetReminderModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SetReminderModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'isRemind': _isRemind,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'isRemind': serializeParam(
          _isRemind,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SetReminderModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SetReminderModelStruct(
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        isRemind: deserializeParam(
          data['isRemind'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SetReminderModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SetReminderModelStruct &&
        time == other.time &&
        isRemind == other.isRemind;
  }

  @override
  int get hashCode => const ListEquality().hash([time, isRemind]);
}

SetReminderModelStruct createSetReminderModelStruct({
  DateTime? time,
  bool? isRemind,
}) =>
    SetReminderModelStruct(
      time: time,
      isRemind: isRemind,
    );
