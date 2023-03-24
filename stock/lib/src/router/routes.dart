import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'routes_name.dart';

class AtlasRouter {
  AtlasRouter(this._read);

  // ignore: unused_field
  final Reader _read;

  late final router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
            path: "/$entranceRouteName",
            name: entranceRouteName,
            builder: (BuildContext context, GoRouterState state) {
              return Container();
            }),
        GoRoute(
            path: "/$mainRouteName",
            name: mainRouteName,
            builder: (BuildContext context, GoRouterState state) {
              return Container();
            }),
      ],
      );
}

final atlasRouterProvider = StateProvider<AtlasRouter>((ref) {
  //need add loginState as parameter in router
  return AtlasRouter(ref.read);
});
