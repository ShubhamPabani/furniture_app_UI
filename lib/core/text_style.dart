import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:furniture_ui/core/color.dart';

// On Front Page
const TextStyle heading = TextStyle(
  color: black,  // heading (Furniture in unique style) & (Stylish sofa) color change
  fontSize: 36,
  fontWeight: FontWeight.bold,
);

const TextStyle subHeading = TextStyle(
  color: black,   // (we have wide range of furniture) & (Total Price) color change
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const TextStyle tabButtonS = TextStyle(
  color: CupertinoColors.systemBlue,  // All, chairs, lamps, tables color change when tap
  fontSize: 18,
  fontWeight: FontWeight.w900,
);
const TextStyle tabButtonU = TextStyle(
  color: black,   // All, chairs, lamps, tables color change
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

const TextStyle itemCardHeading = TextStyle(
  color: black,
  fontSize: 22,      // Stylish sofa size change
  fontWeight: FontWeight.w500,
);
const TextStyle itemCardDes = TextStyle(
  color: lightBlack,
  fontSize: 15,
);
const TextStyle itemCardPrice = TextStyle(
  color: black,
  fontSize: 17,
  fontWeight: FontWeight.w700,
);