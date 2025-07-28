// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginModelStruct extends BaseStruct {
  LoginModelStruct({
    String? userName,
    String? firstName,
    String? lastName,
    String? email,
    String? countryCode,
    String? phoneNumber,
    String? password,
  })  : _userName = userName,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _countryCode = countryCode,
        _phoneNumber = phoneNumber,
        _password = password;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  static LoginModelStruct fromMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        userName: data['userName'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        countryCode: data['countryCode'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        password: data['password'] as String?,
      );

  static LoginModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'countryCode': _countryCode,
        'phoneNumber': _phoneNumber,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginModelStruct &&
        userName == other.userName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        countryCode == other.countryCode &&
        phoneNumber == other.phoneNumber &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userName,
        firstName,
        lastName,
        email,
        countryCode,
        phoneNumber,
        password
      ]);
}

LoginModelStruct createLoginModelStruct({
  String? userName,
  String? firstName,
  String? lastName,
  String? email,
  String? countryCode,
  String? phoneNumber,
  String? password,
}) =>
    LoginModelStruct(
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      email: email,
      countryCode: countryCode,
      phoneNumber: phoneNumber,
      password: password,
    );
