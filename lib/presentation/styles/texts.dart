import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeText {
  static final TextStyle regularText = GoogleFonts.inter(
    fontSize: 17,
    color: Colors.black,
  );
  static final TextStyle boldText = GoogleFonts.inter(
    fontSize: 23,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle smallBoldText = GoogleFonts.inter(
    fontSize: 13,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

}
