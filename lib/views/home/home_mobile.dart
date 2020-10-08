part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _appBody(),
    );
  }

  Widget _appBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Home Page'),
        ],
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Home Page'),
      backgroundColor: Colors.black,
    );
  }
}
