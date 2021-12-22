import 'dart:typed_data';

class Barcode {
  Uint8List barcodeData;
  int barcodeType;
  int fromScannerID;

  Barcode(this.barcodeData, this.barcodeType, this.fromScannerID);

}