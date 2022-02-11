import 'package:sizer/sizer.dart';

extension ResponsiveSize on num {
  static const double scaleFactorH = 0.10204;
  static const double scalefactorW = 0.06944;

  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get H => this * SizerUtil.height / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get W => this * SizerUtil.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get ksp => this * (SizerUtil.width / 3) / 100;

  /// Calculates the number of pixel depending on the device's screen size
  ///
  /// Eg: 20.kh -> will take 20 logical pixel of the screen's height
  double get kh => (this * SizerUtil.height * scaleFactorH) / 100;

  /// Calculates the number of pixel depending on the device's screen size
  ///
  /// Eg: 20.kw -> will take 20 logical pixel of the screen's width
  double get kw => (this * SizerUtil.width * scalefactorW) / 100;
}
