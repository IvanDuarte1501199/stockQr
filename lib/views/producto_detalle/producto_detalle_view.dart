library producto_detalle_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'producto_detalle_view_model.dart';

part 'producto_detalle_mobile.dart';

class ProductoDetalleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductoDetalleViewModel viewModel = ProductoDetalleViewModel();
    return ViewModelProvider<ProductoDetalleViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _ProductoDetalleMobile(viewModel),
          );
        });
  }
}
