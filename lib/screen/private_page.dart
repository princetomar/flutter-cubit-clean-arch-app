import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autoroutertut/routes/app_router.gr.dart';

@RoutePage()
class PrivatePage extends StatelessWidget {
  const PrivatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: const Center(
        child: Text("Private Page"),
      ),
    );
  }
}
