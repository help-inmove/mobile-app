// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/device/device_view.dart';
import '../ui/home/home_view.dart';

class Routes {
  static const String homeView = '/';
  static const String deviceView = '/device-view';
  static const all = <String>{
    homeView,
    deviceView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.deviceView, page: DeviceView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    DeviceView: (data) {
      var args = data.getArgs<DeviceViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DeviceView(
          key: args.key,
          device: args.device,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DeviceView arguments holder class
class DeviceViewArguments {
  final Key? key;
  final BluetoothDevice device;
  DeviceViewArguments({this.key, required this.device});
}
