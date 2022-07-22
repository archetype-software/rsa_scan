import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:rsa_scan/rsa_scan.dart';
import 'package:rsa_scan/src/rsa_scanner.dart';

class RsaDriversScanner extends RsaScanner {
  @override
  String title() {
    return 'Scan Driver\'s License';
  }

  @override
  String hint() {
    return 'Hold the barcode on the back of the driver\'s license in front of the camera.';
  }

  @override
  RsaDriversLicense documentFromBarcode(Barcode barcode) {
    return RsaDriversLicense.fromBarcodeBytes(barcode.rawBytes!);
  }
}
