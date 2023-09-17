import 'package:flutter/material.dart';

CustomColors lightCustomColors = const CustomColors(
  borderColorNotOpened: Color.fromRGBO(28, 136, 111, 1),
  borderColorOpened: Colors.black26,
  claimAcceptedStatusColor: Color.fromRGBO(28, 136, 111, 0.3),
  claimWaitingStatusColor: Color.fromRGBO(255, 213, 79, 1),
  claimDeniedStatusColor: Color.fromRGBO(240, 66, 63, 0.637),
  nClaimsColor: Color.fromRGBO(255, 213, 79, 1),
  notOpenedColor: Color.fromRGBO(28, 136, 111, 0.3),
  openedColor: Color.fromRGBO(230, 232, 235, 1),
  splashGreenColor: Color.fromRGBO(28, 136, 111, 0.6),
  splashGreyColor: Color.fromARGB(255, 158, 158, 158),
  secondaryTextColor: Colors.black54,
  background2: Colors.white,
  successSnackbar: Colors.green,
);

CustomColors darkCustomColors = const CustomColors(
    borderColorNotOpened: Color.fromRGBO(28, 136, 111, 1),
    borderColorOpened: Colors.black26,
    claimAcceptedStatusColor: Color.fromRGBO(0, 135, 23, 0.8),
    claimWaitingStatusColor: Color.fromRGBO(219, 115, 24, 1),
    claimDeniedStatusColor: Color.fromRGBO(240, 66, 63, 0.637),
    nClaimsColor: Color.fromRGBO(219, 115, 24, 1),
    notOpenedColor: Color.fromRGBO(28, 136, 111, 0.3),
    openedColor: Color.fromRGBO(41, 43, 41, 1),
    splashGreenColor: Color.fromRGBO(28, 136, 111, 0.6),
    splashGreyColor: Color.fromARGB(255, 158, 158, 158),
    secondaryTextColor: Colors.white70,
    background2: Color.fromRGBO(42, 46, 44, 1),
    successSnackbar: Colors.green,
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
  final Color? secondaryTextColor;
  final Color? borderColorNotOpened;
  final Color? background2;
  final Color? successSnackbar;

  const CustomColors(
      {required this.nClaimsColor,
      required this.claimWaitingStatusColor,
      required this.claimAcceptedStatusColor,
      required this.claimDeniedStatusColor,
      required this.splashGreyColor,
      required this.splashGreenColor,
      required this.notOpenedColor,
      required this.openedColor,
      required this.borderColorOpened,
      required this.secondaryTextColor,
      required this.borderColorNotOpened,
      required this.background2,
      required this.successSnackbar});

  @override
  CustomColors copyWith(
      {Color? nClaimsColor,
      Color? claimWaitingStatusColor,
      Color? claimAcceptedStatusColor,
      Color? claimDeniedStatusColor,
      Color? splashGreyColor,
      Color? splashGreenColor,
      Color? notOpenedColor,
      Color? openedColor,
      Color? borderColorOpened,
      Color? secondaryTextColor,
      Color? borderColorNotOpened,
      Color? buttonPressed,
      Color? statusBarDefaultColor,
      Color? background2,
      Color? successSnackbar}) {
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
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      borderColorNotOpened: borderColorNotOpened ?? this.borderColorNotOpened,
      background2: background2 ?? this.background2,
      successSnackbar: successSnackbar ?? this.successSnackbar,
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
      secondaryTextColor: Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
      borderColorNotOpened: Color.lerp(borderColorNotOpened, other.borderColorNotOpened, t),
      background2: Color.lerp(background2, other.background2, t),
      successSnackbar: Color.lerp(successSnackbar, other.successSnackbar, t),
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
