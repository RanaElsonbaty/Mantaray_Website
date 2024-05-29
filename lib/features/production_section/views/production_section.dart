import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/production_section/data/model/product_model.dart';
import 'package:mantaray_website/features/production_section/widgets/product_second_widget.dart';
import 'package:mantaray_website/features/production_section/widgets/product_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductionSection extends StatefulWidget {
  const ProductionSection({super.key});

  @override
  State<ProductionSection> createState() => _ProductionSectionState();
}

class _ProductionSectionState extends State<ProductionSection> {

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.maxWidth;
        final isMobile = screenWidth < 800;
        final isTablet = screenWidth >= 800 && screenWidth < 1200;

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
                    "Production".toUpperCase(),
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
              height: 1650,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width:90.w,
                      child: Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                        maxLines: 5,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                      width:90.w,
                      child: Text("Testing:   Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                        maxLines: 5,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),
                  const SizedBox(height: 25,),
                  const Divider(
                    thickness: 1,
                    indent: 80,
                    endIndent: 80,
                    color: AppColors.blackColor,
                  ),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsTop.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductWidget(index: index,);
                        }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 12.w,);
                      },
                      )
                  ),
                  Text(
                    "Enhanced Oil Recovery - EOR:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                      width:90.w,
                      child: Text("Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                        maxLines: 10,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),

                  const SizedBox(height: 25,),
                  const Divider(
                    thickness: 1,
                    indent: 80,
                    endIndent: 80,
                    color: AppColors.blackColor,
                  ),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsBottom.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductBottomWidget(index: index,);
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
                    "Production".toUpperCase(),
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
              height: 1700,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: getResponsiveContainerWidth(700),
                      child: Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                        // maxLines: 4,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),
                  const SizedBox(height: 20,),
                  Text(
                    "Testing:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                      width: getResponsiveContainerWidth(700),
                      child: Text("Testing: Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                        // maxLines: 4,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),
                  const SizedBox(height: 25,),
                  const Divider(
                    thickness: 1,
                    indent: 400,
                    endIndent: 400,
                    color: AppColors.blackColor,
                  ),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsTop.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductWidget(index: index,);
                        }, separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 12.w,);
                      },
                      )
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Enhanced Oil Recovery - EOR:",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(24),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                      width: getResponsiveContainerWidth(700),
                      child: Text("Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                        // maxLines: 4,
                        style: GoogleFonts.inter(
                            textStyle:TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: getResponsiveFontSize(22)
                            )
                        ),)),
                  const SizedBox(height: 25,),
                  const Divider(
                    thickness: 1,
                    indent: 400,
                    endIndent: 400,
                    color: AppColors.blackColor,
                  ),
                  Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: productsBottom.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductBottomWidget(index: index,);
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
                    "Production".toUpperCase(),
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
              height: 1650,
              decoration:  BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadiusDirectional.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: getResponsiveContainerWidth(2500),
                        child: Text("Mantaray Oilfields Services is committed to maximizing the yield and efficiency of oil  extraction processes. We offer comprehensive solutions tailored to meet your needs.",
                          // maxLines: 4,
                          style: GoogleFonts.inter(
                              textStyle:TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: getResponsiveFontSize(22)
                              )
                          ),)),
                    const SizedBox(height: 20,),
                    Text(
                      "Testing:",
                      style: TextStyle(
                          fontSize: getResponsiveFontSize(24),
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                    SizedBox(
                        width: getResponsiveContainerWidth(2500),
                        child: Text("Testing: Mantaray conducts thorough testing of production wells to assess reservoir characteristics,  flow rates, fluid properties, and well integrity. This includes initial well testing, extended well testing, and well performance evaluation.",
                          // maxLines: 4,
                          style: GoogleFonts.inter(
                              textStyle:TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: getResponsiveFontSize(22)
                              )
                          ),)),
                    const SizedBox(height: 20,),
                    const Divider(
                      thickness: 1,
                      indent: 400,
                      endIndent: 400,
                      color: AppColors.blackColor,
                    ),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: productsTop.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductWidget(index: index,);
                              }, separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(width: 12.w,);
                            },
                            ),
                          ],
                        )
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "Enhanced Oil Recovery - EOR:",
                      style: TextStyle(
                          fontSize: getResponsiveFontSize(24),
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                    SizedBox(
                        width: getResponsiveContainerWidth(2500),
                        child: Text("Mantaray provides advanced polymer technologies to improve the performance and  economics of Oil & Gas extraction operations.  Our solutions are designed to meet or exceed  the needs of our customers in the Oil & Gas industry.  In all Oil & Gas applications, Mantaray offers tailored polymers and equipment solutions  from conceptual lab studies through to full-field operations.  Our support services include:",
                          // maxLines: 4,
                          style: GoogleFonts.inter(
                              textStyle:TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: getResponsiveFontSize(22)
                              )
                          ),)),
                    const SizedBox(height: 20,),
                    const Divider(
                      thickness: 1,
                      indent: 400,
                      endIndent: 400,
                      color: AppColors.blackColor,
                    ),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: productsBottom.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ProductBottomWidget(index: index,);
                              }, separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(width: 12.w,);
                            },
                            ),
                          ],
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
