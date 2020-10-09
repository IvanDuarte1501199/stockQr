part of producto_detalle_view;

class _ProductoDetalleMobile extends StatelessWidget {
  final ProductoDetalleViewModel viewModel;

  _ProductoDetalleMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProductoDetalleMobile')),
    );
  }
}