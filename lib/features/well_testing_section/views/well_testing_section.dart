import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/well_testing_section/data/model/product_model.dart';
import 'package:mantaray_website/features/well_testing_section/widgets/product_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WellTestingSection extends StatefulWidget {
  const WellTestingSection({super.key});

  @override
  State<WellTestingSection> createState() => _WellTestingSectionState();
}

class _WellTestingSectionState extends State<WellTestingSection> {

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isMobile = screenWidth < 960;
        final isTablet = screenWidth >= 960 && screenWidth < 1900;

        double getResponsiveFontSize(double baseFontSize) {
          if (isMobile) {
            return baseFontSize * 0.8;
          } else if (isTablet) {
            return baseFontSize * 0.7;
          } else {
            return baseFontSize;
          }
        }

        double getResponsiveContainerWidth(double baseWidth) {
          if (isMobile) {
            return screenWidth * 0.2;
          } else if (isTablet) {
            return screenWidth * 0.3;
          } else {
            return baseWidth;
          }
        }
        return isMobile? Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                  Text(
                    "well testing".toUpperCase(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 820,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: getResponsiveFontSize(22)
                        )
                    ),),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  Text("Testing: Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: getResponsiveFontSize(22)
                        )
                    ),),
                  const SizedBox(height: 50,),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsTop.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductWidget(index: index, titleFontSize: 20, containerHeight: 350, containerWidth: 230, imageHeight: 150, imageWidth: 230, descriptionFontSize: 18, moreFontSize: 18, showSize: 14,);
                        }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 12.w,);
                      },
                      )
                  ),
                ],
              ),
            )
          ],
        ):
        isTablet?
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                  Text(
                    "well testing".toUpperCase(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(22).sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 650,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                    // maxLines: 4,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: getResponsiveFontSize(22)
                        )
                    ),),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  Text("Testing: Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                    textAlign: TextAlign.justify,
                    // maxLines: 4,
                    style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: getResponsiveFontSize(22)
                        )
                    ),),
                  const SizedBox(height: 50,),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsTop.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductWidget(index: index, titleFontSize: 20, containerHeight: 350, containerWidth: 230, imageHeight: 150, imageWidth: 230, descriptionFontSize: 18, moreFontSize: 18, showSize: 14,);
                        }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 12.w,);
                      },
                      )
                  ),
                ],
              ),
            ),
          ],
        )
        : Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                  Text(
                    "well testing".toUpperCase(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(18).sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 1550,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                          textStyle:TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: getResponsiveFontSize(16).sp
                          )
                      ),),
                    const SizedBox(height: 20,),
                    Text(
                      "Testing:",
                      style: TextStyle(
                          fontSize: getResponsiveFontSize(18).sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                    Text("Testing: Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                          textStyle:TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: getResponsiveFontSize(16).sp
                          )
                      ),),
                    const SizedBox(height: 100,),
                    Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: productsTop.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProductWidget(index: index, titleFontSize: getResponsiveFontSize(18).sp, containerHeight: 750, containerWidth: 550, imageHeight:350, imageWidth: 550, descriptionFontSize: 36, moreFontSize: 36, showSize: 32,);
                          }, separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 12.w,);
                        },
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },

    );
  }
}
