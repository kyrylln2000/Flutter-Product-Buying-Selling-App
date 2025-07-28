// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartModelStruct extends BaseStruct {
  ChartModelStruct({
    String? xValue,
    String? yValue,
  })  : _xValue = xValue,
        _yValue = yValue;

  // "xValue" field.
  String? _xValue;
  String get xValue => _xValue ?? '';
  set xValue(String? val) => _xValue = val;

  bool hasXValue() => _xValue != null;

  // "yValue" field.
  String? _yValue;
  String get yValue => _yValue ?? '';
  set yValue(String? val) => _yValue = val;

  bool hasYValue() => _yValue != null;

  static ChartModelStruct fromMap(Map<String, dynamic> data) =>
      ChartModelStruct(
        xValue: data['xValue'] as String?,
        yValue: data['yValue'] as String?,
      );

  static ChartModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xValue': _xValue,
        'yValue': _yValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xValue': serializeParam(
          _xValue,
          ParamType.String,
        ),
        'yValue': serializeParam(
          _yValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChartModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartModelStruct(
        xValue: deserializeParam(
          data['xValue'],
          ParamType.String,
          false,
        ),
        yValue: deserializeParam(
          data['yValue'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChartModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartModelStruct &&
        xValue == other.xValue &&
        yValue == other.yValue;
  }

  @override
  int get hashCode => const ListEquality().hash([xValue, yValue]);
}

ChartModelStruct createChartModelStruct({
  String? xValue,
  String? yValue,
}) =>
    ChartModelStruct(
      xValue: xValue,
      yValue: yValue,
    );
