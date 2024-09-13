import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeSectionVideoOldGif extends StatelessWidget {
  const HomeSectionVideoOldGif({super.key});

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return  BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return LayoutBuilder(
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
                    child:Image.asset("assets/video/Welcome.gif",fit: BoxFit.fill,height: 450,),
                  ),

                  Padding(
                    padding:  const EdgeInsets.all( 20),
                    child: Center(
                      child: Text( "Welcome to the world of professionalism and innovation with MantaRay.\nOur dedicated team works tirelessly to guarantee client satisfaction and deliver optimal results in every operation.",
                        textAlign: TextAlign.justify,
                        maxLines: 8,
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: isMobile?getResponsiveFontSize(22) :getResponsiveFontSize(18).sp
                            )
                        ),)
                    ),
                  )]);
          },
        );
      },

    );
  }
}