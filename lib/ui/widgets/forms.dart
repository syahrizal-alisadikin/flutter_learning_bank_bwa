import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class CustomeFormField extends StatelessWidget {
  final String? hintText;
  final String title;
  final bool? obscureText;
  final TextEditingController controller;
  final bool? eye;
  final bool iconData;
  final VoidCallback? onPressed;
  const CustomeFormField({
    Key? key,
    this.hintText,
    required this.title,
    this.obscureText = false,
    required this.controller,
    this.eye = false,
    this.onPressed,
    this.iconData = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText!,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            isDense: true,
            contentPadding: const EdgeInsets.all(16),
            suffixIcon: eye!
                ? IconButton(
                    onPressed: onPressed,
                    icon: iconData
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
