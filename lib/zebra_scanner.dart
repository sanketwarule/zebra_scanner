
import 'dart:async';

import 'package:flutter/services.dart';

import 'barcode.dart';

class ZebraScannerPlugin {
  static const MethodChannel _channel = MethodChannel('zebra_scanner_plugin');
  static const EventChannel _eventChannel = EventChannel('barcode_stream');
  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get initScanner async {
    final String? init = await _channel.invokeMethod('initScanner');
    return init;
  }

  static Future<String?> get connectToScanner async {
    final String? connectToScanner = await _channel.invokeMethod('connectToScanner');
    return connectToScanner;
  }

  // static Future<String?> get scanBarcode async {
  //   final String? scannedBarcode = await _channel.invokeMethod('scanBarcode');
  //   return scannedBarcode;
  // }

  static Stream<String> get barcodeStream {
    return _eventChannel.receiveBroadcastStream().map((event) => event);
  }

}
