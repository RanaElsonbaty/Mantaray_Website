import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';

class OurPartnersSection extends StatelessWidget {
  const OurPartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: Text("OUR PARTNERS",style: GoogleFonts.inter(
          textStyle:const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color:AppColors.whiteColor
          )
        ),),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        LoadingAnimationWidget.waveDots(
        color: AppColors.loadingColor,
          size: 70,
        ),
            const SizedBox(height: 10,),
            Text("SOON...",style: GoogleFonts.inter(
                textStyle:const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color:AppColors.whiteColor
                )
            ),),
          ],
        ),
      ),
    );
  }
}
