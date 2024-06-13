import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Future<bool> showLoaderDialog(BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text('Do you want to exit ?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('No'),
            ),
          ],
        ),
      ) ??
      false;
}
