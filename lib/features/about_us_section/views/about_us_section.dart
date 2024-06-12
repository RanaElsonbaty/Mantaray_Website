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
  double containerHeight = 450; // Initial value for container height
  double containerHeightMobile = 380; // Initial value for container height
  double containerHeightTablet = 400; // Initial value for container height for tablet

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = MediaQuery.of(context).size.width;
            final isMobile = screenWidth < 800;
            final isTablet = screenWidth >= 800 && screenWidth < 1900;

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
                         :isTablet?Row(
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
                              fontSize: getResponsiveFontSize(18).sp,
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
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/about-us.jpg"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
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
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.inter(
                                    textStyle:const TextStyle(
                                      fontWeight: FontWeight.w400,
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
                                          containerHeightMobile = 380; // Reset container height
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
                      ],
                    )
                  else if (isTablet)
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage("assets/images/about-us.jpg"),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
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
                                    fontSize: getResponsiveFontSize(16.sp),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                child: Text(
                                  layoutCubit.websiteModel!.aboutContent!,
                                  textAlign: TextAlign.justify,
                                  maxLines: maxLinesTablet,
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: getResponsiveFontSize(18).sp,
                                        )
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  else
                    Column(
                      children: [
                         CircleAvatar(
                          radius: 30.sp,
                          backgroundImage: const AssetImage("assets/images/about-us.jpg"),
                        ),
                        const SizedBox(height: 60,),
                        Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(20),
                          height: containerHeight, // Dynamic container height
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
                                    fontSize: getResponsiveFontSize(16).sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                layoutCubit.websiteModel!.aboutContent!,
                                textAlign: TextAlign.justify,
                                maxLines: maxLines,
                                  style: GoogleFonts.inter(
                                      textStyle:  TextStyle(
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: getResponsiveFontSize(14).sp,
                                      )
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
            :const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
