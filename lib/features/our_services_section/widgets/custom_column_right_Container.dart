import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/our_services_section/widgets/highlighted_widget.dart';

class CustomColumnDeskRightCurved extends StatelessWidget {
  const CustomColumnDeskRightCurved({super.key, required this.fontSize, required this.text, required this.width, required this.content, required this.url, required this.fontSizContent, required this.number, required this.image});
  final double fontSize;
  final double fontSizContent;
  final double width;
  final String text;
  final String content;
  final String url;
  final String image;
  final String number;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text.toUpperCase(),
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: fontSize
                      ),
                    ),)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: HighlightedText(text: content,
                        fontSize: fontSizContent,),
                    ),
                  ),
                   CircleAvatar(
                    radius: 100,
                     backgroundImage: AssetImage(image),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 100),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(50),
                            border: Border.all(color: AppColors.blackColor)
                        ),
                        child:  Center(child: Text(number,style: const TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                      Image.asset(url, height: 220,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

  }
}
