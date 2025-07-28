// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopratedsellerStruct extends BaseStruct {
  TopratedsellerStruct({
    int? id,
    String? img,
    String? name,
    String? items,
    String? followers,
  })  : _id = id,
        _img = img,
        _name = name,
        _items = items,
        _followers = followers;

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

  // "items" field.
  String? _items;
  String get items => _items ?? '';
  set items(String? val) => _items = val;

  bool hasItems() => _items != null;

  // "followers" field.
  String? _followers;
  String get followers => _followers ?? '';
  set followers(String? val) => _followers = val;

  bool hasFollowers() => _followers != null;

  static TopratedsellerStruct fromMap(Map<String, dynamic> data) =>
      TopratedsellerStruct(
        id: castToType<int>(data['id']),
        img: data['img'] as String?,
        name: data['name'] as String?,
        items: data['items'] as String?,
        followers: data['followers'] as String?,
      );

  static TopratedsellerStruct? maybeFromMap(dynamic data) => data is Map
      ? TopratedsellerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'img': _img,
        'name': _name,
        'items': _items,
        'followers': _followers,
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
        'items': serializeParam(
          _items,
          ParamType.String,
        ),
        'followers': serializeParam(
          _followers,
          ParamType.String,
        ),
      }.withoutNulls;

  static TopratedsellerStruct fromSerializableMap(Map<String, dynamic> data) =>
      TopratedsellerStruct(
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
        items: deserializeParam(
          data['items'],
          ParamType.String,
          false,
        ),
        followers: deserializeParam(
          data['followers'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TopratedsellerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TopratedsellerStruct &&
        id == other.id &&
        img == other.img &&
        name == other.name &&
        items == other.items &&
        followers == other.followers;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, img, name, items, followers]);
}

TopratedsellerStruct createTopratedsellerStruct({
  int? id,
  String? img,
  String? name,
  String? items,
  String? followers,
}) =>
    TopratedsellerStruct(
      id: id,
      img: img,
      name: name,
      items: items,
      followers: followers,
    );
