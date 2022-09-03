import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class CustomeFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomeFilledButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 45,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CustomTextButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 24,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
