import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.disableColor,
    this.size,
    this.titleStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? disableColor;
  final Size? size;
  final String title;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(size),
        padding: MaterialStateProperty.resolveWith((states) => padding),
        elevation: MaterialStateProperty.resolveWith((states) => 0.0),
        backgroundColor: MaterialStateColor.resolveWith((states) {
          return states.contains(MaterialState.disabled)
              ? disableColor ?? Colors.grey
              : backgroundColor ?? const Color(0xFF005CCC);
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
      ),
      onPressed: onPressed,
      child: Text(title,
          style: titleStyle ??
              const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
    );
  }
}
