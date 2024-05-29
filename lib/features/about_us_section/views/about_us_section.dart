import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key});

  @override
  _AboutUsSectionState createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  int maxLines = 9; // Initial value for maxLines
  int maxLinesMobile = 13; // Initial value for maxLines
  int maxLinesTablet = 11; // Initial value for maxLines for tablet
  bool showLearnMore = true; // Initial value for showing "Learn more" button
  bool showLearnMoreMobile = true; // Initial value for showing "Learn more" button
  bool showLearnMoreTablet = true; // Initial value for showing "Learn more" button for tablet
  double containerHeight = 400; // Initial value for container height
  double containerHeightMobile = 450; // Initial value for container height
  double containerHeightTablet = 400; // Initial value for container height for tablet

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final isMobile = screenWidth < 620;
            final isTablet = screenWidth >= 620 && screenWidth < 970;

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
                return screenWidth * 0.1;
              } else if (isTablet) {
                return screenWidth * 0.3;
              } else {
                return baseWidth;
              }
            }

            return layoutCubit.websiteModel!=null? Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: isMobile
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 1,
                          width: getResponsiveContainerWidth(100),
                          color: AppColors.blackColor,
                        ),
                         Text(
                          layoutCubit.websiteModel!.aboutHeading!.toUpperCase(),
                          style: TextStyle(
                              fontSize: getResponsiveFontSize(22),
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 1,
                          width: getResponsiveContainerWidth(50),
                          color: AppColors.blackColor,
                        ),
                      ],
                    )
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 1,
                          width: getResponsiveContainerWidth(320),
                          color: AppColors.blackColor,
                        ),
                        Text(
                          layoutCubit.websiteModel!.aboutHeading!.toUpperCase(),
                          style: TextStyle(
                              fontSize: getResponsiveFontSize(22),
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 1,
                          width: getResponsiveContainerWidth(320),
                          color: AppColors.blackColor,
                        ),
                      ],
                    ),
                  ),
                  if (isMobile)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/lottie/lottie.gif",
                          height: 100,
                          width: 100,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          width:70.w,
                          height: containerHeightMobile,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.backGroundColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                layoutCubit.websiteModel!.aboutTitle!,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: getResponsiveFontSize(16),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width:600,
                                child: Text(
                                  layoutCubit.websiteModel!.aboutContent!,
                                  maxLines: maxLinesMobile,
                                  style: GoogleFonts.inter(
                                    textStyle:const TextStyle(
                                      color: AppColors.primaryColor
                                    )
                                  )
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MaterialButton(
                                    color: AppColors.greyColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusDirectional.circular(15)),
                                    onPressed: () {
                                      setState(() {
                                        if (maxLinesMobile == 13) {
                                          maxLinesMobile = 25; // Increase maxLines
                                          showLearnMoreMobile = false; // Hide "Learn more" button
                                          containerHeightMobile = 565; // Increase container height
                                        } else {
                                          maxLinesMobile = 13; // Reset maxLines
                                          showLearnMoreMobile = true; // Show "Learn more" button
                                          containerHeightMobile = 450; // Reset container height
                                        }
                                      });
                                    },
                                    child: Text(showLearnMoreMobile ? "Learn more" : "Learn less"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        // Expanded(
                        //   child: Image.asset(
                        //     "assets/lottie/lottie.gif",
                        //     height: 150,
                        //     width: getResponsiveContainerWidth(60),
                        //   ),
                        // ),
                      ],
                    )
                  else if (isTablet)
                    Column(
                      children: [
                        Image.asset(
                          "assets/lottie/lottie.gif",
                          height: 150,
                          width: 150,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: containerHeightTablet, // Dynamic container height for tablet
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.backGroundColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                layoutCubit.websiteModel!.aboutTitle!,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: getResponsiveFontSize(18),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(

                                child: Text(
                                  layoutCubit.websiteModel!.aboutContent!,
                                  maxLines: maxLinesTablet,
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            color: AppColors.primaryColor,
                                          fontSize: getResponsiveFontSize(22),
                                        )
                                    )
                                ),
                              ),
                              // const SizedBox(height: 20),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     MaterialButton(
                              //       color: AppColors.greyColor,
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadiusDirectional.circular(15)),
                              //       onPressed: () {
                              //         setState(() {
                              //           if (maxLinesTablet == 11) {
                              //             maxLinesTablet = 29; // Increase maxLines
                              //             showLearnMoreTablet = false; // Hide "Learn more" button
                              //             containerHeightTablet = 790; // Increase container height
                              //           } else {
                              //             maxLinesTablet = 11; // Reset maxLines
                              //             showLearnMoreTablet = true; // Show "Learn more" button
                              //             containerHeightTablet = 500; // Reset container height
                              //           }
                              //         });
                              //       },
                              //       child: Text(showLearnMoreTablet ? "Learn more" : "Learn less"),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                      ],
                    )
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: containerHeight, // Dynamic container height
                          width: getResponsiveContainerWidth(800),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.backGroundColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                layoutCubit.websiteModel!.aboutTitle!,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: getResponsiveFontSize(18),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: getResponsiveContainerWidth(700),
                                child: Text(
                                  layoutCubit.websiteModel!.aboutContent!,
                                  maxLines: maxLines,
                                    style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: AppColors.primaryColor,
                                        )
                                    )
                                ),
                              ),
                              // const SizedBox(height: 20),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     MaterialButton(
                              //       color: AppColors.greyColor,
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadiusDirectional.circular(15)),
                              //       onPressed: () {
                              //         setState(() {
                              //           if (maxLines == 9) {
                              //             maxLines = 12; // Increase maxLines
                              //             showLearnMore = false; // Hide "Learn more" button
                              //             containerHeight = 550; // Increase container height
                              //           } else {
                              //             maxLines = 9; // Reset maxLines
                              //             showLearnMore = true; // Show "Learn more" button
                              //             containerHeight = 450; // Reset container height
                              //           }
                              //         });
                              //       },
                              //       child: Text(showLearnMore ? "Learn more" : "Learn less"),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        ),
                        SizedBox(width: getResponsiveContainerWidth(40)),
                        Expanded(
                          child: Image.asset(
                            "assets/lottie/lottie.gif",
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
            :Container();
          },
        );
      },
    );
  }
}
