import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/consultation_section/data/model/consultation_model.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.index, required this.size, required this.titleSize});
  final int index;
  final double size;
  final double titleSize;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: consultList[index].color,
      child:  Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            children: [
              Text(consultList[index].title,style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: titleSize,
                  color: AppColors.blackColor
                )
              ),),
              const SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(consultList[index].content,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: size,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
