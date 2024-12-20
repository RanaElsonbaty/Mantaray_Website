import 'package:flutter/material.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/our_services_section/widgets/highlighted_widget.dart';
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
                  SizedBox(
                      width:90.w,
                      child: HighlightedText(text:
                      "Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                        fontSize: getResponsiveFontSize(22).sp,)
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                      width:90.w,
                      child: HighlightedText(text:
                      "Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                        fontSize: getResponsiveFontSize(22).sp,)
                  ),
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
              padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 30),
              width: double.infinity,
              height: 670,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HighlightedText(text:"Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                   fontSize: getResponsiveFontSize(19).sp,),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(20).sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  const SizedBox(height: 7,),
                  HighlightedText(text:
                  "Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                    fontSize: getResponsiveFontSize(19).sp,),
                  const SizedBox(height: 50,),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 4.w,),
                        Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: productsTop.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductWidget(index: index, titleFontSize: 20, containerHeight: 350, containerWidth: 230, imageHeight: 150, imageWidth: 230, descriptionFontSize: 18, moreFontSize: 18, showSize: 14,);
                              }, separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(width: 7.w,);
                            },
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        : Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
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
                        fontSize: getResponsiveFontSize(16).sp,
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
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
              width: double.infinity,
              height: 1100,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HighlightedText(text:"Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                       fontSize: getResponsiveFontSize(14).sp,),
                    const SizedBox(height: 20,),
                    Text(
                      "Testing",
                      style: TextStyle(
                          fontSize: getResponsiveFontSize(15).sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                    const SizedBox(height: 15,),
                    HighlightedText(text:
                    "Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                      fontSize: getResponsiveFontSize(14).sp,),

                    const SizedBox(height: 160,),
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 11.w,),
                          Expanded(
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: productsTop.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return ProductWidget(index: index, titleFontSize: getResponsiveFontSize(14).sp, containerHeight: 400, containerWidth: 300, imageHeight:150, imageWidth: 300, descriptionFontSize: 24, moreFontSize: 20, showSize: 20,);
                                }, separatorBuilder: (BuildContext context, int index) {
                                return SizedBox(width: 4.w,);
                              },
                              )
                          ),
                        ],
                      ),
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
