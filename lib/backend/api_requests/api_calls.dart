// import 'dart:convert';
// import 'dart:typed_data';
// import '../schema/structs/index.dart';

// import 'package:flutter/foundation.dart';

// import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

// const _kPrivateApiFunctionName = 'ffPrivateApiCall';

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
