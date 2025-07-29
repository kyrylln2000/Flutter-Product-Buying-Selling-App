// import 'dart:convert';
// import 'dart:typed_data';
// import '../schema/structs/index.dart';

// import 'package:flutter/foundation.dart';

// import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'package:sougk/auth/supabase_auth/auth_util.dart';
import 'package:sougk/flutter_flow/uploaded_file.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

// const _kPrivateApiFunctionName = 'ffPrivateApiCall';
String? getSupabaseToken() {
  return currentJwtToken;
}

class PqzoepcjuqyvtosffqafCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pqzoepcjuqyvtosffqaf',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/categories',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDealOptionsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetDealOptions',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/deal_options',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

// NEW API CALLS FOR ADDITIONAL TABLES

class GetConditionsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetConditions',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/conditions',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {
        'select': '*',
        'is_active': 'eq.true',
        'order': 'name.asc',
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCountriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountries',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/countries',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {
        'select': '*',
        'is_active': 'eq.true',
        'order': 'name.asc',
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTownshipsCall {
  static Future<ApiCallResponse> call({String? countryId}) async {
    Map<String, dynamic> params = {
      'select': '*',
      'is_active': 'eq.true',
      'order': 'name.asc',
    };

    // If country is selected, filter townships by country
    if (countryId != null && countryId.isNotEmpty) {
      params['country_id'] = 'eq.$countryId';
    }

    return ApiManager.instance.makeApiCall(
      callName: 'GetTownships',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/townships',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: params,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductTypesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductTypes',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/product_types',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {
        'select': '*',
        'is_active': 'eq.true',
        'order': 'name.asc',
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

// CLOUDFLARE R2 + PRODUCT SUBMISSION API CALLS

// Upload image to Cloudflare R2 via Supabase Edge Function
class UploadImageToR2Call {
  static Future<ApiCallResponse> call({
    FFUploadedFile? imageFile,
    String? fileName,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadImageToR2',
      apiUrl:
          'https://pqzoepcjuqyvtosffqaf.supabase.co/functions/v1/upload-to-r2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $currentJwtToken',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {
        'image': imageFile,
        'fileName':
            fileName ?? 'product_${DateTime.now().millisecondsSinceEpoch}.jpg',
        'folder': 'products',
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

// Create product in Supabase with R2 image URLs
class CreateProductCall {
  static Future<ApiCallResponse> call({
    String? userId,
    String? name,
    double? price,
    String? description,
    String? phoneNumber,
    String? dealOptionRemark,
    String? modelNo,
    String? ram,
    String? address,
    List<String>? imageUrls,
    String? categoryId,
    String? productTypeId,
    String? conditionId,
    String? dealOptionId,
    String? countryId,
    String? townshipId,
  }) async {
    final body = {
      'user_id': userId,
      'name': name,
      'price': price,
      'description': description,
      'phone_number': phoneNumber,
      'deal_option_remark': dealOptionRemark,
      'model_no': modelNo,
      'ram': ram,
      'address': address,
      'image_url': imageUrls ?? [],
      'category_id': categoryId,
      'product_type_id': productTypeId,
      'condition_id': conditionId,
      'deal_option_id': dealOptionId,
      'country_id': countryId,
      'township_id': townshipId,
      'is_active': true,
      'is_featured': false,
    };

    // Remove null values
    body.removeWhere((key, value) => value == null);

    return ApiManager.instance.makeApiCall(
      callName: 'CreateProduct',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/products',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
        'Authorization': 'Bearer $currentJwtToken',
        'Content-Type': 'application/json',
        'Prefer': 'return=representation',
      },
      params: {},
      body: json.encode(body),
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

// Get current authenticated user
class GetCurrentUserCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCurrentUser',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/auth/v1/user',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
        'Authorization': 'Bearer $currentJwtToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

// String _toEncodable(dynamic item) {
//   return item;
// }

// String _serializeList(List? list) {
//   list ??= <String>[];
//   try {
//     return json.encode(list, toEncodable: _toEncodable);
//   } catch (_) {
//     if (kDebugMode) {
//       print("List serialization failed. Returning empty list.");
//     }
//     return '[]';
//   }
// }

// String _serializeJson(dynamic jsonVar, [bool isList = false]) {
//   jsonVar ??= (isList ? [] : {});
//   try {
//     return json.encode(jsonVar, toEncodable: _toEncodable);
//   } catch (_) {
//     if (kDebugMode) {
//       print("Json serialization failed. Returning empty json.");
//     }
//     return isList ? '[]' : '{}';
//   }
// }
