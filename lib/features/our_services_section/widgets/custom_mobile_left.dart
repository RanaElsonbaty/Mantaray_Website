import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/our_services_section/widgets/highlighted_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomCurvedLeft extends StatelessWidget {
  const CustomCurvedLeft({super.key, required this.fontSize, required this.text, required this.content, required this.url, required this.number, required this.image});
  final double fontSize;
  final String text;
  final String content;
  final String url;
  final String image;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text.toUpperCase(),style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize
                ),
              ),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 100),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(50),
                            border: Border.all(color: AppColors.blackColor)
                        ),
                        child:  Center(child: Text(number)),
                      ),
                      Image.asset(url, height: 170,),
                    ],
                  ),
                   CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(image),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 80.w,
                      child:  HighlightedText(text: content,
                        fontSize: 18,
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
