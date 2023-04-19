import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String)? onChanged;
  final String hintText;
  final String labelText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const TextFieldWidget({
    super.key,
    this.onChanged,
    required this.hintText,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
