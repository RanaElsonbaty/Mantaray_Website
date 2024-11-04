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
                  padding: const EdgeInsets.only(left: 10),
                  width: double.infinity,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                            width:90.w,
                            child: Text(layoutCubit.websiteModel!.softwareContent!,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.inter(
                                  textStyle:TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: getResponsiveFontSize(22)
                                  )
                              ),)),
                        Image.asset(AppImages.softwareLogoImage,height: 15.h,width: 20.w,),
                        SizedBox(
                          width: double.infinity,
                            child: Image.asset(AppImages.softwareSectionImage,height: 200)),


                      ],
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,))
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
                  width: double.infinity,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65),
                          child: Text(layoutCubit.websiteModel!.softwareContent!,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.inter(
                                textStyle:TextStyle(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: getResponsiveFontSize(20).sp
                                )
                            ),),
                        ),
                        SizedBox(height: 7.h,),
                        Image.asset(AppImages.softwareLogoImage,height: 10.h,width: 10.w,),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Image.asset(AppImages.softwareSectionImage,height: 450,
                              fit: BoxFit.fill,)),

                      ],
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,))
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
                  width: double.infinity,
                  decoration:  BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Text(layoutCubit.websiteModel!.softwareContent!,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.inter(
                                textStyle:TextStyle(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: getResponsiveFontSize(14).sp
                                )
                            ),),
                        ),
                        SizedBox(height: 10.h,),
                        Image.asset(AppImages.softwareLogoImage,width: 12.w,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Image.asset(AppImages.softwareSectionImage,height: 750,
                            fit: BoxFit.fill,)),

                      ],
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,));
          },

        );
      },
    );
  }
}
