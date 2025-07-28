// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntroModelStruct extends BaseStruct {
  IntroModelStruct({
    String? image,
    String? title,
    String? subTitle,
  })  : _image = image,
        _title = title,
        _subTitle = subTitle;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

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

  static IntroModelStruct fromMap(Map<String, dynamic> data) =>
      IntroModelStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        subTitle: data['subTitle'] as String?,
      );

  static IntroModelStruct? maybeFromMap(dynamic data) => data is Map
      ? IntroModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'subTitle': _subTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static IntroModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      IntroModelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'IntroModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IntroModelStruct &&
        image == other.image &&
        title == other.title &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([image, title, subTitle]);
}

IntroModelStruct createIntroModelStruct({
  String? image,
  String? title,
  String? subTitle,
}) =>
    IntroModelStruct(
      image: image,
      title: title,
      subTitle: subTitle,
    );
