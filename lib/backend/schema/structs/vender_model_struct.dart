// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenderModelStruct extends BaseStruct {
  VenderModelStruct({
    int? id,
    String? img,
    String? name,
  })  : _id = id,
        _img = img,
        _name = name;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static VenderModelStruct fromMap(Map<String, dynamic> data) =>
      VenderModelStruct(
        id: castToType<int>(data['id']),
        img: data['img'] as String?,
        name: data['name'] as String?,
      );

  static VenderModelStruct? maybeFromMap(dynamic data) => data is Map
      ? VenderModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'img': _img,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static VenderModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      VenderModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VenderModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VenderModelStruct &&
        id == other.id &&
        img == other.img &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, img, name]);
}

VenderModelStruct createVenderModelStruct({
  int? id,
  String? img,
  String? name,
}) =>
    VenderModelStruct(
      id: id,
      img: img,
      name: name,
    );
