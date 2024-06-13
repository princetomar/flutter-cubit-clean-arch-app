import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autoroutertut/routes/app_router.gr.dart';

@RoutePage()
class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.green,
      body: Container(),
    );
  }
}
