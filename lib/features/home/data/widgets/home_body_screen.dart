import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';

Widget buildSection({required GlobalKey key,required widget,required double height,required color}) {
  return Container(
    key: key,
    height: height, // Adjust the height as needed
    color: color,
    child: widget,
  );
}

void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}

Widget buildTextButton({required String label, required GlobalKey key}) {
  return TextButton(
    onPressed: () => scrollToSection(key),
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused) ||
              states.contains(MaterialState.pressed)) {
            return AppColors.secondaryColor; // Orange focus/pressed color
          }
          return null; // Default color
        },
      ),
    ),
    child: Text(
      label,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 18, // Use a fixed font size initially
        ),
      ),
    ),
  );
}
