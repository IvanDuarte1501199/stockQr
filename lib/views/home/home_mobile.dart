part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;
  final BuildContext context;

  _HomeMobile(this.viewModel, this.context);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => Navigator.pushNamed(context, 'scan_producto'));
    return Scaffold(
      // appBar: _appBar(),
      body: _appBody(),
    );
  }

  Widget _appBody() {
    return _circularProgress();
  }

  Widget _circularProgress() {
    return Container(
      height: 500,
      child: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black)),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text(''),
      backgroundColor: Colors.black,
    );
  }
}
