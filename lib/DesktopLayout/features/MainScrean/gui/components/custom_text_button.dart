import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  VoidCallback? onScroll;
   CustomTextButton({super.key, required this.title , this.onScroll});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: onScroll,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          )),
    );
  }
}
