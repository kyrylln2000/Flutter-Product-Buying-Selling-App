// Updated API calls for dynamic category fields system
import 'dart:convert';
import 'package:sougk/auth/supabase_auth/auth_util.dart';
import 'package:sougk/flutter_flow/uploaded_file.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

String? getSupabaseToken() {
  return currentJwtToken;
}

// Get all categories
class GetCategoriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCategories',
      apiUrl: 'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/categories',
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

// Get category fields for a specific category
class GetCategoryFieldsCall {
  static Future<ApiCallResponse> call({String? categoryId}) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCategoryFields',
      apiUrl:
          'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/category_fields',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
      },
      params: {
        'select': '*',
        'category_id': 'eq.$categoryId',
        'is_active': 'eq.true',
        'order': 'field_order.asc',
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

// Create product with basic fields only
class CreateProductCall {
  static Future<ApiCallResponse> call({
    String? userId,
    String? name,
    double? price,
    String? description,
    String? phoneNumber,
    String? dealOptionRemark,
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

// Save dynamic field values for a product
class SaveProductFieldValuesCall {
  static Future<ApiCallResponse> call({
    required String productId,
    required List<Map<String, dynamic>> fieldValues,
  }) async {
    // Convert field values to the format expected by Supabase
    final List<Map<String, dynamic>> values = fieldValues
        .map((fieldValue) => {
              'product_id': productId,
              'category_field_id': fieldValue['category_field_id'],
              'field_value': fieldValue['field_value']?.toString() ?? '',
            })
        .toList();

    return ApiManager.instance.makeApiCall(
      callName: 'SaveProductFieldValues',
      apiUrl:
          'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/product_field_values',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBxem9lcGNqdXF5dnRvc2ZmcWFmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTMyNTMwMTQsImV4cCI6MjA2ODgyOTAxNH0.hJCeLCDeXB9gVbl1n8Qk18CXJt250-3tH_BxhRkzzDQ',
        'Authorization': 'Bearer $currentJwtToken',
        'Content-Type': 'application/json',
        'Prefer': 'return=representation',
      },
      params: {},
      body: json.encode(values),
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

// Get products with their dynamic fields (using the view)
class GetProductsWithFieldsCall {
  static Future<ApiCallResponse> call({
    String? categoryId,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> params = {
      'select': '*',
      'is_active': 'eq.true',
      'order': 'created_at.desc',
    };

    if (categoryId != null && categoryId.isNotEmpty) {
      params['category_id'] = 'eq.$categoryId';
    }

    if (limit != null) {
      params['limit'] = limit.toString();
    }

    if (offset != null) {
      params['offset'] = offset.toString();
    }

    return ApiManager.instance.makeApiCall(
      callName: 'GetProductsWithFields',
      apiUrl:
          'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/products_with_fields',
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

// Admin APIs for managing category fields (if needed)
class CreateCategoryFieldCall {
  static Future<ApiCallResponse> call({
    required String categoryId,
    required String fieldName,
    required String fieldLabel,
    required String fieldType,
    Map<String, dynamic>? fieldOptions,
    bool isRequired = false,
    String? placeholder,
    Map<String, dynamic>? validationRules,
    int fieldOrder = 0,
  }) async {
    final body = {
      'category_id': categoryId,
      'field_name': fieldName,
      'field_label': fieldLabel,
      'field_type': fieldType,
      'field_options': fieldOptions,
      'is_required': isRequired,
      'placeholder': placeholder,
      'validation_rules': validationRules,
      'field_order': fieldOrder,
      'is_active': true,
    };

    // Remove null values
    body.removeWhere((key, value) => value == null);

    return ApiManager.instance.makeApiCall(
      callName: 'CreateCategoryField',
      apiUrl:
          'https://pqzoepcjuqyvtosffqaf.supabase.co/rest/v1/category_fields',
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
