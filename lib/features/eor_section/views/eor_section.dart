import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/our_services_section/widgets/highlighted_widget.dart';
import 'package:mantaray_website/features/well_testing_section/data/model/product_model.dart';
import 'package:mantaray_website/features/well_testing_section/widgets/product_second_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EorSection extends StatefulWidget {
  const EorSection({super.key});

  @override
  State<EorSection> createState() => _EorSectionState();
}

class _EorSectionState extends State<EorSection> {

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

                  Text(
                    "Enhanced Oil Recovery - EOR".toUpperCase(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 720,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(8)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:90.w,
                      child: HighlightedText(text:"Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                         fontSize: getResponsiveFontSize(22).sp,)
                    ),

                  const SizedBox(height: 40,),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsBottom.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductBottomWidget(index: index,titleFontSize: 20, containerHeight: 350, containerWidth: 230, imageHeight: 150, imageWidth: 230, descriptionFontSize: 18, moreFontSize: 18, showSize: 14,);
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
                    const EdgeInsets.symmetric(horizontal: 5),
                    height: 1,
                    width: getResponsiveContainerWidth(300),
                    color: AppColors.blackColor,
                  ),
                  Text(
                    "Enhanced Oil Recovery - EOR".toUpperCase(),
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(22).sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
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
              height: 600,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HighlightedText(text:"Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                     fontSize:getResponsiveFontSize(19).sp ,),
                  const SizedBox(height: 40,),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 6.w,),
                        Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: productsBottom.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductBottomWidget(index: index,titleFontSize: 20, containerHeight: 350, containerWidth: 230, imageHeight: 150, imageWidth: 230, descriptionFontSize: 18, moreFontSize: 18, showSize: 14,);
                              }, separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(width: 8.w,);
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
                    "Enhanced Oil Recovery - EOR".toUpperCase(),
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
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 30),
              width: double.infinity,
              height: 1200,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HighlightedText(text:"Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                   fontSize: getResponsiveFontSize(14).sp,),
                  const SizedBox(height: 60,),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 3.w,),
                        Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: productsBottom.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductBottomWidget(index: index, titleFontSize: getResponsiveFontSize(16).sp, containerHeight: 750, containerWidth: 550, imageHeight:350, imageWidth: 550, descriptionFontSize: 36, moreFontSize: 36, showSize: 32,);
                              }, separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(width: 6.w,);
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
        );
      },

    );
  }
}
