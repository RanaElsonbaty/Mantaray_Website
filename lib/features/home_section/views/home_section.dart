import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeSection extends StatelessWidget {
   const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.maxWidth;
        final isMobile = screenWidth < 650;
        final isTablet = screenWidth >= 650 && screenWidth < 970;

        double getResponsiveFontSize(double baseFontSize) {
          if (isMobile) {
            return baseFontSize * 0.8;
          } else if (isTablet) {
            return baseFontSize * 0.7;
          } else {
            return baseFontSize;
          }
        }

        return  Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15)
                ),
                child:Image.asset("assets/video/mantaray_video.gif",fit: BoxFit.fill,height: 450,),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Text( "Welcome to the world of professionalism and innovation with MantaRay.\nOur dedicated team works tirelessly to guarantee client satisfaction and \ndeliver optimal results in every operation.",
                    textAlign: TextAlign.center,
                    maxLines: 8,
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: isMobile?getResponsiveFontSize(22) :getResponsiveFontSize(14).sp
                        )
                    ),)
                ),
              )]);
      },
    );
  }
}
