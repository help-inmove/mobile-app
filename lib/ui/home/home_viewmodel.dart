import 'package:flutter_blue/flutter_blue.dart';
import 'package:mobile_app/app/app.router.dart';
import 'package:mobile_app/services/ble_service.dart';
import 'package:mobile_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final bleService = locator<BLEService>();
  final _navigationService = locator<NavigationService>();

  void navigateToScan(BluetoothDevice device) {
    _navigationService.navigateTo(Routes.deviceView,
        arguments: DeviceViewArguments(device: device));
  }
}
