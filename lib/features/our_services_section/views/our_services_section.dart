import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:mantaray_website/features/our_services_section/widgets/custom_column_Left_container.dart';
import 'package:mantaray_website/features/our_services_section/widgets/custom_column_right_Container.dart';
import 'package:mantaray_website/features/our_services_section/widgets/custom_mobile_left.dart';
import 'package:mantaray_website/features/our_services_section/widgets/custom_mobile_right.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OurServicesSection extends StatefulWidget {
  const OurServicesSection({super.key});

  @override
  State<OurServicesSection> createState() => _OurServicesSectionState();
}

class _OurServicesSectionState extends State<OurServicesSection> {

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
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
                        layoutCubit.websiteModel!.servicesHeading!.toUpperCase(),
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
                  padding: const EdgeInsets.only(top: 90),
                  width: double.infinity,
                  height: 2150,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Column(
                    children: [
                      CustomCurvedLeft(
                        fontSize: getResponsiveFontSize(22), text: layoutCubit.websiteModel!.servicesProductionTitle!, content: layoutCubit.websiteModel!.servicesProductionContent!, url: AppImages.leftCurvedLine, number: '1', image: AppImages.productionImage,),
                      const SizedBox(height: 25,),
                      CustomCurvedRight(
                        fontSize: getResponsiveFontSize(22), text: layoutCubit.websiteModel!.servicesApplicationsTitle!, content: layoutCubit.websiteModel!.servicesApplicationsContent!, url: AppImages.rightCurvedLine, number: '2', image: AppImages.applicationImage,),
                      const SizedBox(height: 25,),
                      CustomCurvedLeft(
                        fontSize: getResponsiveFontSize(22), text: layoutCubit.websiteModel!.servicesSoftwareTitle!, content: layoutCubit.websiteModel!.servicesSoftwareContent!, url: AppImages.leftCurvedLine, number: '3', image: AppImages.softwareImage,),
                      const SizedBox(height: 25,),
                      CustomCurvedRight(
                        fontSize: getResponsiveFontSize(22), text: layoutCubit.websiteModel!.servicesConsultationTitle!, content: layoutCubit.websiteModel!.servicesConsultationContent!, url: AppImages.rightCurvedLine, number: '4', image: AppImages.consultationImage,),
                    ],
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
                      Container(
                        margin:
                        const EdgeInsets.symmetric(horizontal: 20),
                        height: 1,
                        width: getResponsiveContainerWidth(300),
                        color: AppColors.blackColor,
                      ),
                      Text(
                        layoutCubit.websiteModel!.servicesHeading!.toUpperCase(),
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
                  padding: const EdgeInsets.only(top: 90),
                  width: double.infinity,
                  height: 1800,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50,),
                      CustomColumnDeskLeftCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesProductionTitle!, width: getResponsiveContainerWidth(4000), content: layoutCubit.websiteModel!.servicesProductionContent!, url: AppImages.leftCurvedLine, fontSizContent: getResponsiveFontSize(18).sp, number: '1', image: AppImages.productionImage,
                      ),
                      const SizedBox(height: 60,),
                      CustomColumnDeskRightCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesApplicationsTitle!, width: getResponsiveContainerWidth(4000), content: layoutCubit.websiteModel!.servicesApplicationsContent!, url: AppImages.rightCurvedLine, fontSizContent: getResponsiveFontSize(18).sp, number: '2', image: AppImages.applicationImage,
                      ),
                      const SizedBox(height: 60,),
                      CustomColumnDeskLeftCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesSoftwareTitle!, width: getResponsiveContainerWidth(4000), content: layoutCubit.websiteModel!.servicesSoftwareContent!, url: AppImages.leftCurvedLine, fontSizContent: getResponsiveFontSize(18).sp, number: '3', image: AppImages.softwareImage,
                      ),
                      const SizedBox(height: 60,),
                      CustomColumnDeskRightCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesConsultationTitle!, width: getResponsiveContainerWidth(4000), content: layoutCubit.websiteModel!.servicesConsultationContent!, url: AppImages.rightCurvedLine, fontSizContent: getResponsiveFontSize(18).sp, number: '4', image: AppImages.consultationImage,
                      ),
                    ],
                  ),
                )
              ],
            )
                :const Center(child: CircularProgressIndicator())
                :layoutCubit.websiteModel!=null? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 20),
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
                        layoutCubit.websiteModel!.servicesHeading!.toUpperCase(),
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
                  padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
                  width: double.infinity,
                  height: 2100,
                  decoration:  BoxDecoration(
                      color: AppColors.backGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(15)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                      CustomColumnDeskLeftCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesProductionTitle!, width: getResponsiveContainerWidth(65).w, content: layoutCubit.websiteModel!.servicesProductionContent!, url: AppImages.leftCurvedLine, fontSizContent: getResponsiveFontSize(16).sp, number: '1', image: AppImages.productionImage,
                      ),
                      const SizedBox(height: 105,),
                      CustomColumnDeskRightCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesApplicationsTitle!, width: getResponsiveContainerWidth(65).w, content: layoutCubit.websiteModel!.servicesApplicationsContent!, url: AppImages.rightCurvedLine, fontSizContent: getResponsiveFontSize(16).sp, number: '2', image: AppImages.applicationImage,
                      ),
                      const SizedBox(height: 105,),
                      CustomColumnDeskLeftCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesSoftwareTitle!, width: getResponsiveContainerWidth(65).w, content: layoutCubit.websiteModel!.servicesSoftwareContent!, url: AppImages.leftCurvedLine, fontSizContent: getResponsiveFontSize(16).sp, number: '3', image: AppImages.softwareImage,
                      ),
                      const SizedBox(height: 105,),
                      CustomColumnDeskRightCurved(
                        fontSize:  getResponsiveFontSize(16).sp,
                        text: layoutCubit.websiteModel!.servicesConsultationTitle!, width: getResponsiveContainerWidth(65).w, content: layoutCubit.websiteModel!.servicesConsultationContent!, url: AppImages.rightCurvedLine, fontSizContent: getResponsiveFontSize(16).sp, number: '4', image: AppImages.consultationImage,
                      ),
                    ],
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
