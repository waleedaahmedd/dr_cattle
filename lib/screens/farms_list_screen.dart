import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class FarmsListScreen extends StatelessWidget {
  const FarmsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome User Name"),
        leading: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Material(
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}
