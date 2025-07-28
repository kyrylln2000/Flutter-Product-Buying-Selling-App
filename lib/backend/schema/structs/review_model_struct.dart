// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewModelStruct extends BaseStruct {
  ReviewModelStruct({
    String? image,
    String? name,
    String? title,
    String? subTitle,
    double? review,
  })  : _image = image,
        _name = name,
        _title = title,
        _subTitle = subTitle,
        _review = review;

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

  // "review" field.
  double? _review;
  double get review => _review ?? 0.0;
  set review(double? val) => _review = val;

  void incrementReview(double amount) => review = review + amount;

  bool hasReview() => _review != null;

  static ReviewModelStruct fromMap(Map<String, dynamic> data) =>
      ReviewModelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        title: data['title'] as String?,
        subTitle: data['subTitle'] as String?,
        review: castToType<double>(data['review']),
      );

  static ReviewModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ReviewModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'title': _title,
        'subTitle': _subTitle,
        'review': _review,
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
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subTitle': serializeParam(
          _subTitle,
          ParamType.String,
        ),
        'review': serializeParam(
          _review,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReviewModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewModelStruct(
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
        review: deserializeParam(
          data['review'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReviewModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewModelStruct &&
        image == other.image &&
        name == other.name &&
        title == other.title &&
        subTitle == other.subTitle &&
        review == other.review;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, name, title, subTitle, review]);
}

ReviewModelStruct createReviewModelStruct({
  String? image,
  String? name,
  String? title,
  String? subTitle,
  double? review,
}) =>
    ReviewModelStruct(
      image: image,
      name: name,
      title: title,
      subTitle: subTitle,
      review: review,
    );
