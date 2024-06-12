import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:mantaray_website/features/reservior_section/widgets/colored_mantaray_widget.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReserviorSection extends StatefulWidget {
  const ReserviorSection({super.key});

  @override
  State<ReserviorSection> createState() => _ReserviorSectionState();
}

class _ReserviorSectionState extends State<ReserviorSection> {

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return  LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = MediaQuery.of(context).size.width;
            final isMobile = screenWidth < 800;
            final isTablet = screenWidth >= 800 && screenWidth < 1300;

            double getResponsiveFontSize(double baseFontSize) {
              if (isMobile) {
                return baseFontSize * 0.6;
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
                      Text(
                        layoutCubit.websiteModel!.reserviorHeading!.toUpperCase(),
                        style: TextStyle(
                            fontSize: getResponsiveFontSize(24),
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 950,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text( layoutCubit.websiteModel!.reserviorFirstTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        Image.asset(AppImages.reserviorImage),
                        SizedBox(height: 7.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text: layoutCubit.websiteModel!.reserviorFirstContent!, fontSize: getResponsiveFontSize(22),)),
                        SizedBox(height: 7.h,),
                        Text( layoutCubit.websiteModel!.reserviorSecondTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorSecondContent!, fontSize: getResponsiveFontSize(22),)),
                        SizedBox(height: 7.h,),
                        Text( layoutCubit.websiteModel!.reserviorThirdTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorThirdContent!, fontSize: getResponsiveFontSize(18),))
                      ],
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator())
                :isTablet?layoutCubit.websiteModel!=null? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        layoutCubit.websiteModel!.reserviorHeading!.toUpperCase(),
                        style: TextStyle(
                            fontSize: getResponsiveFontSize(24),
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1200,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text( layoutCubit.websiteModel!.reserviorFirstTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        Image.asset(AppImages.reserviorImage),
                        SizedBox(height: 7.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text: layoutCubit.websiteModel!.reserviorFirstContent!, fontSize: getResponsiveFontSize(22),)),
                        SizedBox(height: 7.h,),
                        Text( layoutCubit.websiteModel!.reserviorSecondTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorSecondContent!, fontSize: getResponsiveFontSize(22),)),
                        SizedBox(height: 7.h,),
                        Text( layoutCubit.websiteModel!.reserviorThirdTitle!.toUpperCase(),
                          style: GoogleFonts.inter(
                              textStyle:const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor
                              )
                          ),),
                        SizedBox(height: 4.h,),
                        SizedBox(
                            width:90.w,
                            child: ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorThirdContent!, fontSize: getResponsiveFontSize(18),))
                      ],
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator())
                :layoutCubit.websiteModel!=null? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        layoutCubit.websiteModel!.reserviorHeading!.toUpperCase(),
                        style: TextStyle(
                            fontSize: getResponsiveFontSize(18).sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1460,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text( layoutCubit.websiteModel!.reserviorFirstTitle!.toUpperCase(),
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                    fontSize: getResponsiveFontSize(16).sp
                                )
                            ),),
                          const SizedBox(height: 25,),
                          Image.asset(AppImages.reserviorImage),
                          const SizedBox(height: 40,),
                          ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorFirstContent!, fontSize: getResponsiveFontSize(16).sp,),
                          const SizedBox(height: 35,),
                          Text( layoutCubit.websiteModel!.reserviorSecondTitle!.toUpperCase(),
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor,
                                    fontSize: getResponsiveFontSize(14).sp
                                )
                            ),),
                          const SizedBox(height: 25,),
                          ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorSecondContent!, fontSize: getResponsiveFontSize(16).sp,),
                          const SizedBox(height: 35,),
                          Text( layoutCubit.websiteModel!.reserviorThirdTitle!.toUpperCase(),
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor,
                                    fontSize: getResponsiveFontSize(14).sp
                                )
                            ),),
                          const SizedBox(height: 25,),
                          ColoredMantaRayWordWidget(text:  layoutCubit.websiteModel!.reserviorThirdContent!, fontSize: getResponsiveFontSize(16).sp,)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
