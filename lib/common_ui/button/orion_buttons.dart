import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

enum ButtonSizeVariant {
  large(
    height: 48.0,
    width: 122.0,
    horizontalPadding: 20,
    verticalPadding: 12,
    gap: 8,
    iconSize: 24,
    fontSize: 16.0,
  ),
  medium(
    height: 36.0,
    width: 105.0,
    horizontalPadding: 16,
    verticalPadding: 8,
    gap: 8,
    iconSize: 20,
    fontSize: 14.0,
  ),
  small(
    height: 28.0,
    width: 48.0,
    horizontalPadding: 12,
    verticalPadding: 6,
    gap: 8,
    iconSize: 16,
    fontSize: 12.0,
  ),
  ;

  const ButtonSizeVariant({
    required this.height,
    required this.width,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.gap,
    required this.iconSize,
    required this.fontSize,
  });

  final double height;
  final double width;
  final double horizontalPadding;
  final double verticalPadding;
  final double gap;
  final double iconSize;
  final double fontSize;
}

class BaseParentButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color? overlayColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;
  final bool hasBorder;
  final bool isLoading;
  final ButtonSizeVariant variant;
  final VoidCallback? onPressed;

  const BaseParentButton({
    super.key,
    required this.label,
    this.icon,
    required this.foregroundColor,
    required this.backgroundColor,
    this.overlayColor,
    this.disabledBackgroundColor,
    this.disabledForegroundColor,
    this.hasBorder = false,
    this.isLoading = false,
    this.variant = ButtonSizeVariant.medium,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading ? null : onPressed,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        overlayColor: overlayColor,
        minimumSize: Size(variant.width, variant.height),
        padding: EdgeInsets.symmetric(
          horizontal: variant.horizontalPadding,
          vertical: variant.verticalPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side:
              hasBorder ? BorderSide(color: foregroundColor) : BorderSide.none,
        ),
      ),
      child: isLoading
          ? SizedBox(
              width: variant.iconSize,
              height: variant.iconSize,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(foregroundColor),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    size: variant.iconSize,
                    color: foregroundColor,
                  ),
                  SizedBox(width: variant.gap),
                ],
                Text(
                  label,
                  style: TextStyle(
                    fontSize: variant.fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
    );
  }
}

// Primary Button - Filled dark button
class OrionPrimaryButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isLoading;
  final ButtonSizeVariant variant;
  final VoidCallback? onPressed;

  const OrionPrimaryButton({
    super.key,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.variant = ButtonSizeVariant.medium,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BaseParentButton(
      label: label,
      icon: icon,
      foregroundColor: OrionColors.textOnInverse,
      backgroundColor: OrionColors.shapePrimary,
      overlayColor: OrionColors.textOnInverse,
      disabledBackgroundColor: Colors.black38,
      disabledForegroundColor: Colors.white70,
      isLoading: isLoading,
      variant: variant,
      onPressed: onPressed,
    );
  }
}

// Secondary Button - Outlined button with border
class OrionSecondaryButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isLoading;
  final ButtonSizeVariant variant;
  final VoidCallback? onPressed;

  const OrionSecondaryButton({
    super.key,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.variant = ButtonSizeVariant.medium,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BaseParentButton(
      label: label,
      icon: icon,
      foregroundColor: OrionColors.textDefault,
      backgroundColor: Colors.transparent,
      overlayColor: OrionColors.textDefault,
      disabledBackgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.black38,
      hasBorder: true,
      isLoading: isLoading,
      variant: variant,
      onPressed: onPressed,
    );
  }
}

// Tertiary Button - Text only button
class OrionTertiaryButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isLoading;
  final ButtonSizeVariant variant;
  final VoidCallback? onPressed;

  const OrionTertiaryButton({
    super.key,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.variant = ButtonSizeVariant.medium,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BaseParentButton(
      label: label,
      icon: icon,
      foregroundColor: OrionColors.textBrand,
      backgroundColor: Colors.transparent,
      overlayColor: OrionColors.surfaceBrand.withOpacity(0.05),
      disabledBackgroundColor: Colors.transparent,
      disabledForegroundColor: OrionColors.surfaceBrand.withOpacity(0.5),
      isLoading: isLoading,
      variant: variant,
      onPressed: onPressed,
    );
  }
}

// Accent Button - Filled blue button
class OrionAccentButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isLoading;
  final ButtonSizeVariant variant;
  final VoidCallback? onPressed;

  const OrionAccentButton({
    super.key,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.variant = ButtonSizeVariant.medium,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BaseParentButton(
      label: label,
      icon: icon,
      foregroundColor: OrionColors.textOnBrand,
      backgroundColor: OrionColors.surfaceBrand,
      overlayColor: OrionColors.surfaceInverse,
      disabledBackgroundColor: OrionColors.surfaceBrand.withOpacity(0.5),
      disabledForegroundColor: Colors.white70,
      isLoading: isLoading,
      variant: variant,
      onPressed: onPressed,
    );
  }
}
