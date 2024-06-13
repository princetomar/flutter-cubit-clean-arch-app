import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String image;
  const PostWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
