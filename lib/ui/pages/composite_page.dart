import 'package:composite/helpers/build_composite.dart';
import 'package:flutter/material.dart';

class CompositePage extends StatelessWidget {
  const CompositePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composite Pattern'),
      ),
      body: SingleChildScrollView(
        child: BuildComposite.buildFiles(),
      ),
    );
  }
}
