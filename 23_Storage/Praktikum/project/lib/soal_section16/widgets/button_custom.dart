import 'package:flutter/material.dart';

class ButtonCustomWidget extends StatelessWidget {
  final Function()? onPressed;
  final Widget widget;

  const ButtonCustomWidget({
    super.key,
    required this.onPressed,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: widget,
      ),
    );
  }
}
