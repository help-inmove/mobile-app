import 'package:flutter_blue/flutter_blue.dart';

class BLEService {
  FlutterBlue _flutterBlue = FlutterBlue.instance;

  Stream<List<ScanResult>> getScanResult() => _flutterBlue.scanResults;

  Stream<bool> isScanning() => _flutterBlue.isScanning;

  void stopScanning() => _flutterBlue.stopScan();

  void startScanning(int seconds) =>
      _flutterBlue.startScan(timeout: Duration(seconds: seconds));
}
