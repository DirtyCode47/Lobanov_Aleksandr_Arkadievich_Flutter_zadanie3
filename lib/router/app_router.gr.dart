// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:lobanov_a_a_flutter_zadanie3/UI/homep_screen.dart' as _i1;
import 'package:lobanov_a_a_flutter_zadanie3/UI/news_feed_screen.dart' as _i2;
import 'package:lobanov_a_a_flutter_zadanie3/UI/root_screen.dart' as _i3;
import 'package:lobanov_a_a_flutter_zadanie3/UI/settings_screen.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomepRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomepScreen(title: '',),
      );
    },
    NewsFeedRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.NewsFeedScreen(),
      );
    },
    RootRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RootScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomepScreen]
class HomepRoute extends _i5.PageRouteInfo<void> {
  const HomepRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomepRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomepRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsFeedScreen]
class NewsFeedRoute extends _i5.PageRouteInfo<void> {
  const NewsFeedRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NewsFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsFeedRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RootScreen]
class RootRoute extends _i5.PageRouteInfo<void> {
  const RootRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
