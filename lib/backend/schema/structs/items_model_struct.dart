// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsModelStruct extends BaseStruct {
  ItemsModelStruct({
    int? id,
    String? img,
    String? name,
    String? price,
    String? smallimg,
    String? firstname,
    String? country,
    bool? isfav,
    String? types,
    bool? discount,
    String? price2,
  })  : _id = id,
        _img = img,
        _name = name,
        _price = price,
        _smallimg = smallimg,
        _firstname = firstname,
        _country = country,
        _isfav = isfav,
        _types = types,
        _discount = discount,
        _price2 = price2;

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

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "smallimg" field.
  String? _smallimg;
  String get smallimg => _smallimg ?? '';
  set smallimg(String? val) => _smallimg = val;

  bool hasSmallimg() => _smallimg != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  set firstname(String? val) => _firstname = val;

  bool hasFirstname() => _firstname != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "isfav" field.
  bool? _isfav;
  bool get isfav => _isfav ?? false;
  set isfav(bool? val) => _isfav = val;

  bool hasIsfav() => _isfav != null;

  // "types" field.
  String? _types;
  String get types => _types ?? '';
  set types(String? val) => _types = val;

  bool hasTypes() => _types != null;

  // "discount" field.
  bool? _discount;
  bool get discount => _discount ?? false;
  set discount(bool? val) => _discount = val;

  bool hasDiscount() => _discount != null;

  // "price2" field.
  String? _price2;
  String get price2 => _price2 ?? '';
  set price2(String? val) => _price2 = val;

  bool hasPrice2() => _price2 != null;

  static ItemsModelStruct fromMap(Map<String, dynamic> data) =>
      ItemsModelStruct(
        id: castToType<int>(data['id']),
        img: data['img'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
        smallimg: data['smallimg'] as String?,
        firstname: data['firstname'] as String?,
        country: data['country'] as String?,
        isfav: data['isfav'] as bool?,
        types: data['types'] as String?,
        discount: data['discount'] as bool?,
        price2: data['price2'] as String?,
      );

  static ItemsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'img': _img,
        'name': _name,
        'price': _price,
        'smallimg': _smallimg,
        'firstname': _firstname,
        'country': _country,
        'isfav': _isfav,
        'types': _types,
        'discount': _discount,
        'price2': _price2,
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
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'smallimg': serializeParam(
          _smallimg,
          ParamType.String,
        ),
        'firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'isfav': serializeParam(
          _isfav,
          ParamType.bool,
        ),
        'types': serializeParam(
          _types,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.bool,
        ),
        'price2': serializeParam(
          _price2,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItemsModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemsModelStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        smallimg: deserializeParam(
          data['smallimg'],
          ParamType.String,
          false,
        ),
        firstname: deserializeParam(
          data['firstname'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        isfav: deserializeParam(
          data['isfav'],
          ParamType.bool,
          false,
        ),
        types: deserializeParam(
          data['types'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.bool,
          false,
        ),
        price2: deserializeParam(
          data['price2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItemsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemsModelStruct &&
        id == other.id &&
        img == other.img &&
        name == other.name &&
        price == other.price &&
        smallimg == other.smallimg &&
        firstname == other.firstname &&
        country == other.country &&
        isfav == other.isfav &&
        types == other.types &&
        discount == other.discount &&
        price2 == other.price2;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        img,
        name,
        price,
        smallimg,
        firstname,
        country,
        isfav,
        types,
        discount,
        price2
      ]);
}

ItemsModelStruct createItemsModelStruct({
  int? id,
  String? img,
  String? name,
  String? price,
  String? smallimg,
  String? firstname,
  String? country,
  bool? isfav,
  String? types,
  bool? discount,
  String? price2,
}) =>
    ItemsModelStruct(
      id: id,
      img: img,
      name: name,
      price: price,
      smallimg: smallimg,
      firstname: firstname,
      country: country,
      isfav: isfav,
      types: types,
      discount: discount,
      price2: price2,
    );
