import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Color? borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxShadow? shadow;
  final bool disabled;
  final Color? disabledColor;
  final double? elevation;
  final Gradient? gradient;
  final BorderRadius? customBorderRadius;
  final AlignmentGeometry? alignment;

  const CustomButton({
    super.key,
    required this.child,
    this.onPressed,
    this.width,
    this.height,
    this.color,
    this.borderColor,
    this.borderRadius = 8.0,
    this.padding,
    this.margin,
    this.shadow,
    this.disabled = false,
    this.disabledColor,
    this.elevation,
    this.gradient,
    this.customBorderRadius,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final buttonColor = color ?? Theme.of(context).primaryColor;
    final disabledBtnColor = disabledColor ?? Colors.grey.shade400;

    final border = borderColor != null
        ? Border.all(color: borderColor!, width: 1)
        : null;

    final radius = customBorderRadius ?? BorderRadius.circular(borderRadius);

    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: shadow != null ? [shadow!] : null,
        borderRadius: radius,
      ),
      child: Material(
        color: Colors.transparent,
        elevation: elevation ?? 0,
        borderRadius: radius,
        child: InkWell(
          onTap: disabled ? null : onPressed,
          borderRadius: radius,
          child: Ink(
            decoration: BoxDecoration(
              color: disabled ? disabledBtnColor : buttonColor,
              gradient: disabled ? null : gradient,
              border: border,
              borderRadius: radius,
            ),
            child: Padding(
              padding:
                  padding ??
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Align(
                alignment: alignment ?? Alignment.center,
                widthFactor: 1,
                heightFactor: 1,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
