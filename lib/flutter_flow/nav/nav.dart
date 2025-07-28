import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavbarWidget() : OnboardingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? NavbarWidget()
              : OnboardingPageWidget(),
        ),
        FFRoute(
          name: SplashPageWidget.routeName,
          path: SplashPageWidget.routePath,
          builder: (context, params) => SplashPageWidget(),
        ),
        FFRoute(
          name: OnboardingPageWidget.routeName,
          path: OnboardingPageWidget.routePath,
          builder: (context, params) => OnboardingPageWidget(),
        ),
        FFRoute(
          name: SignInPageWidget.routeName,
          path: SignInPageWidget.routePath,
          builder: (context, params) => SignInPageWidget(
            isInner: params.getParam(
              'isInner',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: SignUpPageWidget.routeName,
          path: SignUpPageWidget.routePath,
          builder: (context, params) => SignUpPageWidget(
            isInner: params.getParam(
              'isInner',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AboutUsPageWidget.routeName,
          path: AboutUsPageWidget.routePath,
          builder: (context, params) => AboutUsPageWidget(),
        ),
        FFRoute(
          name: SearchPageWidget.routeName,
          path: SearchPageWidget.routePath,
          builder: (context, params) => SearchPageWidget(),
        ),
        FFRoute(
          name: NavbarWidget.routeName,
          path: NavbarWidget.routePath,
          builder: (context, params) => NavbarWidget(),
        ),
        FFRoute(
          name: ForgotPasswordPageWidget.routeName,
          path: ForgotPasswordPageWidget.routePath,
          builder: (context, params) => ForgotPasswordPageWidget(),
        ),
        FFRoute(
          name: ForgotVerificationsPageWidget.routeName,
          path: ForgotVerificationsPageWidget.routePath,
          builder: (context, params) => ForgotVerificationsPageWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ResetPasswordPageWidget.routeName,
          path: ResetPasswordPageWidget.routePath,
          builder: (context, params) => ResetPasswordPageWidget(),
        ),
        FFRoute(
          name: TermsConditionPageWidget.routeName,
          path: TermsConditionPageWidget.routePath,
          builder: (context, params) => TermsConditionPageWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyPageWidget.routeName,
          path: PrivacyPolicyPageWidget.routePath,
          builder: (context, params) => PrivacyPolicyPageWidget(),
        ),
        FFRoute(
          name: ChangePasswordPageWidget.routeName,
          path: ChangePasswordPageWidget.routePath,
          builder: (context, params) => ChangePasswordPageWidget(),
        ),
        FFRoute(
          name: SettingsPageWidget.routeName,
          path: SettingsPageWidget.routePath,
          builder: (context, params) => SettingsPageWidget(),
        ),
        FFRoute(
          name: MyProfilePageWidget.routeName,
          path: MyProfilePageWidget.routePath,
          builder: (context, params) => MyProfilePageWidget(),
        ),
        FFRoute(
          name: EditProfilePageWidget.routeName,
          path: EditProfilePageWidget.routePath,
          builder: (context, params) => EditProfilePageWidget(),
        ),
        FFRoute(
          name: ChatDetailsPageWidget.routeName,
          path: ChatDetailsPageWidget.routePath,
          builder: (context, params) => ChatDetailsPageWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NotificationPageWidget.routeName,
          path: NotificationPageWidget.routePath,
          builder: (context, params) => NotificationPageWidget(),
        ),
        FFRoute(
          name: ReviewPageWidget.routeName,
          path: ReviewPageWidget.routePath,
          builder: (context, params) => ReviewPageWidget(),
        ),
        FFRoute(
          name: VerificationsPageWidget.routeName,
          path: VerificationsPageWidget.routePath,
          builder: (context, params) => VerificationsPageWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CategoriesPageWidget.routeName,
          path: CategoriesPageWidget.routePath,
          builder: (context, params) => CategoriesPageWidget(),
        ),
        FFRoute(
          name: LeptopWidget.routeName,
          path: LeptopWidget.routePath,
          builder: (context, params) => LeptopWidget(),
        ),
        FFRoute(
          name: PhoneWidget.routeName,
          path: PhoneWidget.routePath,
          builder: (context, params) => PhoneWidget(),
        ),
        FFRoute(
          name: ClothesWidget.routeName,
          path: ClothesWidget.routePath,
          builder: (context, params) => ClothesWidget(),
        ),
        FFRoute(
          name: ShoesWidget.routeName,
          path: ShoesWidget.routePath,
          builder: (context, params) => ShoesWidget(),
        ),
        FFRoute(
          name: PetsWidget.routeName,
          path: PetsWidget.routePath,
          builder: (context, params) => PetsWidget(),
        ),
        FFRoute(
          name: ToysWidget.routeName,
          path: ToysWidget.routePath,
          builder: (context, params) => ToysWidget(),
        ),
        FFRoute(
          name: CarsWidget.routeName,
          path: CarsWidget.routePath,
          builder: (context, params) => CarsWidget(),
        ),
        FFRoute(
          name: RealestateWidget.routeName,
          path: RealestateWidget.routePath,
          builder: (context, params) => RealestateWidget(),
        ),
        FFRoute(
          name: BikesWidget.routeName,
          path: BikesWidget.routePath,
          builder: (context, params) => BikesWidget(),
        ),
        FFRoute(
          name: PopularItemsWidget.routeName,
          path: PopularItemsWidget.routePath,
          builder: (context, params) => PopularItemsWidget(),
        ),
        FFRoute(
          name: RecommendedforyouWidget.routeName,
          path: RecommendedforyouWidget.routePath,
          builder: (context, params) => RecommendedforyouWidget(),
        ),
        FFRoute(
          name: LatestVendorWidget.routeName,
          path: LatestVendorWidget.routePath,
          builder: (context, params) => LatestVendorWidget(),
        ),
        FFRoute(
          name: TopratedsellerWidget.routeName,
          path: TopratedsellerWidget.routePath,
          builder: (context, params) => TopratedsellerWidget(),
        ),
        FFRoute(
          name: FeaturedproductsWidget.routeName,
          path: FeaturedproductsWidget.routePath,
          builder: (context, params) => FeaturedproductsWidget(),
        ),
        FFRoute(
          name: DiscoutItemsWidget.routeName,
          path: DiscoutItemsWidget.routePath,
          builder: (context, params) => DiscoutItemsWidget(),
        ),
        FFRoute(
          name: AsusWidget.routeName,
          path: AsusWidget.routePath,
          builder: (context, params) => AsusWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FilterWidget.routeName,
          path: FilterWidget.routePath,
          builder: (context, params) => FilterWidget(),
        ),
        FFRoute(
          name: DetailPageWidget.routeName,
          path: DetailPageWidget.routePath,
          builder: (context, params) => DetailPageWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            price: params.getParam(
              'price',
              ParamType.String,
            ),
            county: params.getParam(
              'county',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RalphEdwardsWidget.routeName,
          path: RalphEdwardsWidget.routePath,
          builder: (context, params) => RalphEdwardsWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            img: params.getParam(
              'img',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ShopPointWidget.routeName,
          path: ShopPointWidget.routePath,
          builder: (context, params) => ShopPointWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            img: params.getParam(
              'img',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyProductWidget.routeName,
          path: MyProductWidget.routePath,
          builder: (context, params) => MyProductWidget(),
        ),
        FFRoute(
          name: EditProductWidget.routeName,
          path: EditProductWidget.routePath,
          builder: (context, params) => EditProductWidget(),
        ),
        FFRoute(
          name: MyProductDetailWidget.routeName,
          path: MyProductDetailWidget.routePath,
          builder: (context, params) => MyProductDetailWidget(),
        ),
        FFRoute(
          name: SearchResultWidget.routeName,
          path: SearchResultWidget.routePath,
          builder: (context, params) => SearchResultWidget(),
        ),
        FFRoute(
          name: DiscountProductsWidget.routeName,
          path: DiscountProductsWidget.routePath,
          builder: (context, params) => DiscountProductsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboardingPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Splash_Screen_(3).png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
