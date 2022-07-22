import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:rsa_scan/rsa_scan.dart';
import 'package:rsa_scan/src/rsa_scanner.dart';

class RsaIdBookScanner extends RsaScanner {
  @override
  String title() {
    return 'Scan ID Book';
  }

  @override
  String hint() {
    return 'Hold the barcode on the ID Book in front of the camera.';
  }

  @override
  RsaIdBook documentFromBarcode(Barcode barcode) {
    return RsaIdBook.fromIdNumber(barcode.rawValue!);
  }
}
