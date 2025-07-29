import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:crypto/crypto.dart';

import '../../backend/supabase/supabase.dart';

Future<User?> appleSignInFunc() async {
  if (kIsWeb) {
    await SupaFlow.client.auth.signInWithOAuth(
      OAuthProvider.apple,
      authScreenLaunchMode: LaunchMode.platformDefault,
    );

    return SupaFlow.client.auth.onAuthStateChange
        .timeout(const Duration(minutes: 5))
        .firstWhere((event) => event.event == AuthChangeEvent.signedIn)
        .then((event) => SupaFlow.client.auth.currentUser);
  }

  final rawNonce = SupaFlow.client.auth.generateRawNonce();
  final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();

  final credential = await SignInWithApple.getAppleIDCredential(
    scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName,
    ],
    nonce: hashedNonce,
  );

  final idToken = credential.identityToken;
  if (idToken == null) {
    throw const AuthException(
        'Could not find ID Token from generated credential.');
  }

  final authResponse = await SupaFlow.client.auth.signInWithIdToken(
    provider: OAuthProvider.apple,
    idToken: idToken,
    nonce: rawNonce,
  );
  return authResponse.user;
}
