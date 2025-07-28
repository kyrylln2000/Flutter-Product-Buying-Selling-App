// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponModelStruct extends BaseStruct {
  CouponModelStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static CouponModelStruct fromMap(Map<String, dynamic> data) =>
      CouponModelStruct(
        name: data['name'] as String?,
      );

  static CouponModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CouponModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static CouponModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      CouponModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CouponModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CouponModelStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

CouponModelStruct createCouponModelStruct({
  String? name,
}) =>
    CouponModelStruct(
      name: name,
    );
