import 'package:flutter/cupertino.dart';
import 'package:stock_qr/core/base/base_view_model.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanProductoViewModel extends BaseViewModel {
  ScanProductoViewModel();
  String _barcode = "";
  String get barcode => _barcode;
  set barcode(String barcode) {
    _barcode = barcode;
    notifyListeners();
  }

  TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;
  set controller(TextEditingController controller) {
    _controller = controller;
    notifyListeners();
  }

  Future verProducto() async {
    print(barcode);
  }

  Future scannear() async {
    barcode = await scanner.scan();
    controller.text = barcode;
    // await verProducto();
  }
}
