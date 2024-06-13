import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autoroutertut/routes/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {
            AutoRouter.of(context).push(const ProfileRoute());
          },
          icon: const Icon(
            CupertinoIcons.person,
          ),
        ),
        IconButton(
          onPressed: () {
            AutoRouter.of(context).push(const PostsRoute());
          },
          icon: const Icon(
            Icons.privacy_tip,
          ),
        ),
      ]),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
