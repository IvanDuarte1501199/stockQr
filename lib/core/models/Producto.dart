class Producto {
  Producto(Map<String, dynamic> json) {
    _id = json['id'];
    _cantidad = json['cantidad'];
    _categoria = json['categoria'];
    _codigo = json['codigo'];
    _nombre = json['nombre'];
    _nombre = json['descripcion'];
    _foto = json['foto'];
    _precioCosto = json['precio_costo'];
    _precioVenta = json['precio_venta'];
  }

  int _id, _cantidad;
  String _codigo, _nombre, _decripcion, _foto, _categoria;
  double _precioCosto, _precioVenta;

  int get id => _id;
  int get cantidad => _cantidad;
  String get categoria => _categoria;
  String get codigo => _codigo;
  String get nombre => _nombre;
  String get decripcion => _decripcion;
  String get foto => _foto;
  double get precioCosto => _precioCosto;
  double get precioVenta => _precioVenta;




}
