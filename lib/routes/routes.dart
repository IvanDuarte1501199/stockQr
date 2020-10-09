import 'package:flutter/cupertino.dart';
import 'package:stock_qr/views/producto_detalle/producto_detalle_view.dart';
import 'package:stock_qr/views/scan_producto/scan_producto_view.dart';

Map<String, WidgetBuilder> getAplicationRoute(){
  return <String, WidgetBuilder> {
    'scan_producto'           : (BuildContext context) => ScanProductoView(),
    'producto_detalle'        : (BuildContext context) => ProductoDetalleView(),
  };
}