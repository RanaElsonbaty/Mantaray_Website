import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SoftwareSection extends StatefulWidget {
  const SoftwareSection({super.key});

  @override
  State<SoftwareSection> createState() => _SoftwareSectionState();
}

class _SoftwareSectionState extends State<SoftwareSection> {

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        return  LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = constraints.maxWidth;
            final isMobile = screenWidth < 800;
            final isTablet = screenWidth >= 800 && screenWidth < 970;

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
            return isMobile? layoutCubit.websiteModel!=null? Column(
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
                        layoutCubit.websiteModel!.softwareHeading!.toUpperCase(),
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
                  padding: const EdgeInsets.only(left: 20),
                  width: double.infinity,
                  height: 600,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppImages.softwareSectionImage,height: 170,width: 170,),
                            Image.asset(AppImages.softwareLogoImage,height: 60,width: 60,),

                          ],
                        ),
                        SizedBox(height: 9.h,),
                        SizedBox(
                            width:90.w,
                            child: Text(layoutCubit.websiteModel!.softwareContent!,
                              style: GoogleFonts.inter(
                                  textStyle:TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: getResponsiveFontSize(22)
                                  )
                              ),))
                      ],
                    ),
                  ),
                )
              ],
            )
                :Container()
                : isTablet? layoutCubit.websiteModel!=null? Column(
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
                        layoutCubit.websiteModel!.softwareHeading!.toUpperCase(),
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
                  height: 700,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppImages.softwareSectionImage,width: 300,height: 300,),
                            const SizedBox(width: 40,),
                            Image.asset(AppImages.softwareLogoImage,width: 100,height: 100,),
                          ],
                        ),
                        const SizedBox(height: 25,),
                        SizedBox(
                            width: getResponsiveContainerWidth(700),
                            child: Text(layoutCubit.websiteModel!.softwareContent!,
                              style: GoogleFonts.inter(
                                  textStyle:TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: getResponsiveFontSize(22)
                                  )
                              ),))
                      ],
                    ),
                  ),
                )
              ],
            )
                :Container()
                :layoutCubit.websiteModel!=null? Column(
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
                        layoutCubit.websiteModel!.softwareHeading!.toUpperCase(),
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
                  width: double.infinity,
                  height: 700,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppImages.softwareSectionImage,height: 500,width: 500,),
                              const SizedBox(width: 60,),
                              Image.asset(AppImages.softwareLogoImage,height: 100,width: 100,),
                            ],
                          ),
                          const SizedBox(height: 25,),
                          SizedBox(
                              width: getResponsiveContainerWidth(2500),
                              child: Text(layoutCubit.websiteModel!.softwareContent!,
                                style: GoogleFonts.inter(
                                    textStyle:TextStyle(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: getResponsiveFontSize(22)
                                    )
                                ),))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
                :Container();
          },

        );
      },
    );
  }
}
