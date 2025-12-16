import 'package:flutter/material.dart';

class SectionErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  final double height;

  const SectionErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
    this.height = 120,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, child: Center(/* 공통 에러 UI */));
  }
}
