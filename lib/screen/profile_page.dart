import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            const Text(
              "This is profile page",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                "https://preview.redd.it/the-most-random-image-every-seen-in-the-history-of-the-v0-xqvc2q6aw2sb1.jpg?width=640&crop=smart&auto=webp&s=f3688b9214ee3041120a2db385c976c77e5f0028",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
