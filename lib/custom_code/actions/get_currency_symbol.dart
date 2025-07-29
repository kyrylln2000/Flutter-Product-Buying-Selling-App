// Automatic FlutterFlow imports
// Imports other custom actions
// Imports custom functions
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
