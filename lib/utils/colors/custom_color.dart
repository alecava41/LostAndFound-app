import 'package:flutter/material.dart';

CustomColors lightCustomColors = const CustomColors(
  borderColorNotOpened: Color.fromRGBO(28, 136, 111, 1),
  borderColorOpened: Colors.black26,
  claimAcceptedStatusColor: Color.fromRGBO(28, 136, 111, 0.3),
  claimWaitingStatusColor: Color.fromRGBO(255, 213, 79, 1),
  claimDeniedStatusColor: Color.fromRGBO(240, 66, 63, 0.637),
  infoColor: Color.fromRGBO(187, 222, 251, 1),
  nClaimsColor: Color.fromRGBO(255, 213, 79, 1),
  notOpenedColor: Color.fromRGBO(28, 136, 111, 0.3),
  openedColor: Colors.white,
  splashGreenColor: Color.fromRGBO(28, 136, 111, 0.6),
  // removed opacity 0.4 to let it be constant
  splashGreyColor: Color.fromARGB(255, 158, 158, 158),
  usernameColor: Colors.black54,
  buttonPressed: Color.fromRGBO(28, 136, 111, 0.1),
  statusBarDefaultColor: Colors.white,
);

CustomColors darkCustomColors = const CustomColors(
  borderColorNotOpened: Color.fromRGBO(28, 136, 111, 1),
  borderColorOpened: Colors.black26,
  claimAcceptedStatusColor: Color.fromRGBO(28, 136, 111, 0.3),
  claimWaitingStatusColor: Color.fromRGBO(255, 213, 79, 1),
  claimDeniedStatusColor: Color.fromRGBO(240, 66, 63, 0.637),
  infoColor: Color.fromRGBO(187, 222, 251, 1),
  nClaimsColor: Color.fromRGBO(255, 213, 79, 1),
  notOpenedColor: Color.fromRGBO(28, 136, 111, 0.3),
  openedColor: Colors.white,
  splashGreenColor: Color.fromRGBO(28, 136, 111, 0.6),
  // removed opacity 0.4 to let it be constant
  splashGreyColor: Color.fromARGB(255, 158, 158, 158),
  usernameColor: Colors.black54,
  buttonPressed: Color.fromRGBO(28, 136, 111, 0.1),
  statusBarDefaultColor: Color(0xFF191C1B), // same as background in dark ColorScheme
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color? nClaimsColor;
  final Color? claimWaitingStatusColor;
  final Color? claimAcceptedStatusColor;
  final Color? claimDeniedStatusColor;
  final Color? splashGreyColor;
  final Color? splashGreenColor;
  final Color? notOpenedColor;
  final Color? openedColor;
  final Color? borderColorOpened;
  final Color? infoColor;
  final Color? usernameColor;
  final Color? borderColorNotOpened;
  final Color? buttonPressed;
  final Color? statusBarDefaultColor;

  const CustomColors({
    required this.nClaimsColor,
    required this.claimWaitingStatusColor,
    required this.claimAcceptedStatusColor,
    required this.claimDeniedStatusColor,
    required this.splashGreyColor,
    required this.splashGreenColor,
    required this.notOpenedColor,
    required this.openedColor,
    required this.borderColorOpened,
    required this.infoColor,
    required this.usernameColor,
    required this.borderColorNotOpened,
    required this.buttonPressed,
    required this.statusBarDefaultColor,
  });

  @override
  CustomColors copyWith({
    Color? nClaimsColor,
    Color? claimWaitingStatusColor,
    Color? claimAcceptedStatusColor,
    Color? claimDeniedStatusColor,
    Color? splashGreyColor,
    Color? splashGreenColor,
    Color? notOpenedColor,
    Color? openedColor,
    Color? borderColorOpened,
    Color? infoColor,
    Color? usernameColor,
    Color? borderColorNotOpened,
    Color? buttonPressed,
    Color? statusBarDefaultColor,
  }) {
    return CustomColors(
      nClaimsColor: nClaimsColor ?? this.nClaimsColor,
      claimWaitingStatusColor: claimWaitingStatusColor ?? this.claimWaitingStatusColor,
      claimAcceptedStatusColor: claimAcceptedStatusColor ?? this.claimAcceptedStatusColor,
      claimDeniedStatusColor: claimDeniedStatusColor ?? this.claimDeniedStatusColor,
      splashGreyColor: splashGreyColor ?? this.splashGreyColor,
      splashGreenColor: splashGreenColor ?? this.splashGreenColor,
      notOpenedColor: notOpenedColor ?? this.notOpenedColor,
      openedColor: openedColor ?? this.openedColor,
      borderColorOpened: borderColorOpened ?? this.borderColorOpened,
      infoColor: infoColor ?? this.infoColor,
      usernameColor: usernameColor ?? this.usernameColor,
      borderColorNotOpened: borderColorNotOpened ?? this.borderColorNotOpened,
      buttonPressed: buttonPressed ?? this.buttonPressed,
      statusBarDefaultColor: statusBarDefaultColor ?? this.statusBarDefaultColor,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      nClaimsColor: Color.lerp(nClaimsColor, other.nClaimsColor, t),
      claimWaitingStatusColor: Color.lerp(claimWaitingStatusColor, other.claimWaitingStatusColor, t),
      claimAcceptedStatusColor: Color.lerp(claimAcceptedStatusColor, other.claimAcceptedStatusColor, t),
      claimDeniedStatusColor: Color.lerp(claimDeniedStatusColor, other.claimDeniedStatusColor, t),
      splashGreyColor: Color.lerp(splashGreyColor, other.splashGreyColor, t),
      splashGreenColor: Color.lerp(splashGreenColor, other.splashGreenColor, t),
      notOpenedColor: Color.lerp(notOpenedColor, other.notOpenedColor, t),
      openedColor: Color.lerp(openedColor, other.openedColor, t),
      borderColorOpened: Color.lerp(borderColorOpened, other.borderColorOpened, t),
      infoColor: Color.lerp(infoColor, other.infoColor, t),
      usernameColor: Color.lerp(usernameColor, other.usernameColor, t),
      borderColorNotOpened: Color.lerp(borderColorNotOpened, other.borderColorNotOpened, t),
      buttonPressed: Color.lerp(buttonPressed, other.buttonPressed, t),
      statusBarDefaultColor: Color.lerp(statusBarDefaultColor, other.statusBarDefaultColor, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
