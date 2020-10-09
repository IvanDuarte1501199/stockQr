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
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: FlatButton.icon(
            color: Colors.black,
            icon: FaIcon(
              FontAwesomeIcons.barcode,
              color: Colors.white,
            ),
            label: Text(
              'Escanear',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              viewModel.scannear();
            },
          ),
        ),
        Container(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    icon: FaIcon(FontAwesomeIcons.barcode),
                    labelText: 'Codigo',
                  ),
                  controller: viewModel.controller,
                  onChanged: (value) {
                    viewModel.barcode = value;
                  },
                ),
              ),
              Container(
                child: SizedBox.fromSize(
                  size: Size(50, 50),
                  child: ClipOval(
                    child: Material(
                      color: Colors.black,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () async {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Text("data"),
        Text(""),
      ],
    ));
  }
}
