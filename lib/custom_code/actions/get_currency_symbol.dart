// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String getCurrencySymbol(String currencyCode) {
  switch (currencyCode) {
    case 'USD':
      return '\$'; // Dollar
    case 'EUR':
      return '€'; // Euro
    case 'GBP':
      return '£'; // British Pound
    case 'JPY':
      return '¥'; // Japanese Yen
    case 'INR':
      return '₹'; // Indian Rupee
    case 'AUD':
      return 'A\$'; // Australian Dollar
    case 'CAD':
      return 'C\$'; // Canadian Dollar
    case 'CHF':
      return 'CHF'; // Swiss Franc
    case 'CNY':
      return '¥'; // Chinese Yuan
    case 'SGD':
      return 'S\$'; // Singapore Dollar
    default:
      return ''; // Default for unsupported currencies
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
