import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';

class ColoredMantaRayWordWidget extends StatelessWidget {
  final String text;
  final double fontSize;

  const ColoredMantaRayWordWidget({super.key, required this.text, required this.fontSize});

  TextSpan highlightMANTARAY(String text, double fontSize) {
    final regex = RegExp(r'(Mantaray)', caseSensitive: false);
    final matches = regex.allMatches(text);
    final textSpans = <TextSpan>[];

    int lastMatchEnd = 0;

    for (final match in matches) {
      if (match.start > lastMatchEnd) {
        textSpans.add(TextSpan(
          text: text.substring(lastMatchEnd, match.start),
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
              fontSize: fontSize,
            ),
          ),
        ));
      }
      textSpans.add(TextSpan(
        text: match.group(0),
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryColor,
            fontSize: fontSize,
          ),
        ),
      ));
      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      textSpans.add(TextSpan(
        text: text.substring(lastMatchEnd),
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColor,
            fontSize: fontSize,
          ),
        ),
      ));
    }

    return TextSpan(children: textSpans);
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: highlightMANTARAY(text, fontSize),
    );
  }
}
