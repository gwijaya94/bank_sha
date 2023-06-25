import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String label;
  final bool obscureText;
  final String? initialValue;
  final void Function(String)? onChanged, onEditingComplete;

  const InputForm({
    Key? key,
    required this.label,
    this.obscureText = false,
    this.initialValue,
    this.onChanged,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
