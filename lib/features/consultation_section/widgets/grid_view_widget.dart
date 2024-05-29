import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/consultation_section/data/model/consultation_model.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8),
      color: consultList[index].color,
      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(consultList[index].title,style: GoogleFonts.inter(
              textStyle:const TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor
              )
            ),),
            const SizedBox(height: 12,),
            Text(consultList[index].content,style: GoogleFonts.inter(
                textStyle:const TextStyle(
                    color: AppColors.whiteColor
                )))
          ],
        ),
      ),
    );
  }
}
