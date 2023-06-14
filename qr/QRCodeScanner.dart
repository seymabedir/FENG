/*import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class QRCodeScanner extends StatefulWidget {
  @override
  _QRCodeScannerState createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  String scannedQRCode = "";

  Future<void> scanQRCode() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() {
        scannedQRCode = barcode;
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          scannedQRCode = 'Camera permission not granted.';
        });
      } else {
        setState(() {
          scannedQRCode = 'Error: $e';
        });
      }
    } on FormatException {
      setState(() {
        scannedQRCode = 'Scan canceled.';
      });
    } catch (e) {
      setState(() {
        scannedQRCode = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: scanQRCode,
              child: Text('Scan QR Code'),
            ),
            SizedBox(height: 20.0),
            Text('Scanned QR Code: $scannedQRCode'),
          ],
        ),
      ),
    );
  }
}*/
