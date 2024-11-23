import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/our_services_section/widgets/highlighted_widget.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key});

  @override
  _AboutUsSectionState createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
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
                return screenWidth * 0.1;
              } else if (isTablet) {
                return screenWidth * 0.3;
              } else {
                return baseWidth;
              }
            }

            return layoutCubit.websiteModel!=null? Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
                              fontSize: getResponsiveFontSize(22).sp,
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
                              fontSize: getResponsiveFontSize(16).sp,
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
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:  AppColors.firstCardColor.withOpacity(.2),
                      ),
                      child: HighlightedText(text: layoutCubit.websiteModel!.aboutContent!,
                        fontSize: getResponsiveFontSize(16).sp,),
                    )
                  else if (isTablet)
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 45),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  AppColors.firstCardColor.withOpacity(.2),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HighlightedText(text: layoutCubit.websiteModel!.aboutContent!,
                            fontSize: getResponsiveFontSize(20).sp,)
                      ),
                    )
                  else
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.firstCardColor.withOpacity(.2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HighlightedText(text: layoutCubit.websiteModel!.aboutContent!,
                          fontSize: getResponsiveFontSize(14).sp,)
                      ),
                    ),
                ],
              ),
            )
            :const Center(child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ));
          },
        );
      },
    );
  }
}
