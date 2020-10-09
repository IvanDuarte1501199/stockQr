library scan_producto_view;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'scan_producto_view_model.dart';

part 'scan_producto_mobile.dart';

class ScanProductoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScanProductoViewModel viewModel = ScanProductoViewModel();
    return ViewModelProvider<ScanProductoViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ScanProductoMobile(viewModel),
        );
      }
    );
  }
}