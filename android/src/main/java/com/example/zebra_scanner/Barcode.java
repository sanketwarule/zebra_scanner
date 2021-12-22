package com.example.zebra_scanner;


public class Barcode {
    byte[] barcodeData;
    int barcodeType;
    int fromScannerID;

    public Barcode(byte[] barcodeData, int barcodeType, int fromScannerID) {
        this.barcodeData=barcodeData;
        this.barcodeType=barcodeType;
        this.fromScannerID=fromScannerID;
    }

    public byte[] getBarcodeData() {
        return barcodeData;
    }

    public void setBarcodeData(byte[] barcodeData) {
        this.barcodeData = barcodeData;
    }

    public int getFromScannerID() {
        return fromScannerID;
    }

    public void setFromScannerID(int fromScannerID) {
        this.fromScannerID = fromScannerID;
    }

    public int getBarcodeType() {
        return barcodeType;
    }

    public void setBarcodeType(int barcodeType) {
        this.barcodeType = barcodeType;
    }

}

