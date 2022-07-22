import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:rsa_scan/rsa_scan.dart';
import 'package:rsa_scan/src/rsa_scanner.dart';

class RsaIdCardScanner extends RsaScanner {
  @override
  String title() {
    return 'Scan ID Card';
  }

  @override
  String hint() {
    return 'Hold the barcode on the back of the ID Card in front of the camera.';
  }

  @override
  RsaIdCard documentFromBarcode(Barcode barcode) {
    return RsaIdCard.fromBarcodeString(barcode.rawValue!);
  }
}
