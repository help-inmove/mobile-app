import 'package:mobile_app/services/ble_service.dart';
import 'package:mobile_app/ui/device/device_view.dart';
import 'package:mobile_app/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// @StackedApp(routes: [MaterialRoute()])
// class App {}

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: DeviceView)
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: BLEService),
  ],
)
class App {}
