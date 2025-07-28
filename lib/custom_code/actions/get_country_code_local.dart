// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_util.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:devicelocale/devicelocale.dart';

Future getCountryCodeLocal() async {
  // Add your function code here!
  try {
    String? locale = await Devicelocale.currentLocale;
    if (locale != null) {
      String countryCode = locale.split('-').last;
      FFAppState().update(() {
        FFAppState().countryName = countryCode;
        FFAppState().countryCode = countryCode;
      });
      return countryCode;
    }
    return 'Unknown';
  } catch (e) {
    return 'Error';
  }
}
