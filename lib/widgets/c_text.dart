import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  const CText({
    super.key,
    required this.text,
    required this.size,
  });
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: size),
    );
  }
}
