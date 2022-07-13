import 'package:flutter/material.dart';

import '../widget/drawer_widget.dart';
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>  Scaffold(
    drawer: const MenuWidget(),
    appBar: AppBar(
      title: const Text("Products"),
    ),

  );
}