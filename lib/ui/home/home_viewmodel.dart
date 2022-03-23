import 'package:mobile_app/services/ble_service.dart';
import 'package:mobile_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final bleService = locator<BLEService>();
}
