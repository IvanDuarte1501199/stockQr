part of scan_producto_view;

class _ScanProductoMobile extends StatelessWidget {
  final ScanProductoViewModel viewModel;

  _ScanProductoMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   viewModel.scannear();
    // });

    return Scaffold(
      appBar: _appBar(),
      body: _appBody(),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Scan QR/Barcode'),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  Widget _appBody() {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: FlatButton.icon(
            color: Colors.black,
            icon: FaIcon(
              FontAwesomeIcons.barcode,
              color: Colors.white,
            ), //`Icon` to display
            label: Text(
              'Escanear',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              viewModel.scannear();
            },
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Text("data"),
            Text("data"),
          ],
        ),
        Text(""),
      ],
    ));
  }
}
