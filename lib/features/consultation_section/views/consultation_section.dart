import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/consultation_section/widgets/grid_view_widget.dart';
import 'package:mantaray_website/features/reservior_section/widgets/colored_mantaray_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ConsultationSection extends StatefulWidget {
  const ConsultationSection({super.key});

  @override
  State<ConsultationSection> createState() => _ConsultationSectionState();
}

class _ConsultationSectionState extends State<ConsultationSection> {

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
            return screenWidth * 0.1;
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
                    "Consultation".toUpperCase(),
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
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              height: 1990,
              color: AppColors.backGroundColor,
              child:  Column(
                children: [
                  ColoredMantaRayWordWidget(text: 'At Mantaray, we specialize in delivering tailored consultation services designed to foster  growth and innovation within your organization. Our team comprises seasoned consultants  with diverse industry experience, ensuring that we provide customized solutions that  address your specific business challenges and objectives.  Mantaray offers a wide array of geoscience and engineering consulting services. Our  offerings range from highly focused single-well investigations to fully integrated field studies  and field development planning, including project economics and risk assessment. To  ensure consistent, high-quality results, Mantaray applies patented, tightly integrated  workflow processes developed while solving complex problems.', fontSize: getResponsiveFontSize(24),),
                  Padding(
                    padding: const EdgeInsets.only(top:30,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Our Approach : ",style: GoogleFonts.inter(
                            textStyle:const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AppColors.blackColor
                            )
                        ),),
                      ],
                    ),
                  ),
                  Text("• Tailored Solutions: We understand that every organization is unique. That's why we take  the time to listen to your needs and challenges, crafting solutions that are specifically  tailored to meet your requirements.\n• Industry Expertise: Our consultants have a deep understanding of various disciplines in oil  and gas industry as: Exploration, Reservoir Engineering, and Operations. This breadth of  experience allows us to offer insights and strategies that drive success in any sector.\n• Collaborative Partnership: We believe in building strong relationships with our clients  based on trust, transparency, and collaboration. By working closely with your team, we  ensure that our solutions are not only effective but also sustainable in the long run.\n• Continuous Improvement: In a rapidly evolving business landscape, we stay ahead of the  curve by continuously refining our methodologies and embracing the latest trends and  technologies. This ensures that our clients always receive the most innovative and  cutting-edge solutions.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                            fontSize: getResponsiveFontSize(24)
                        )
                    ),),
                  const SizedBox(height: 40,),
                  SizedBox(
                    height: 420,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 1.5
                      ), itemBuilder: (BuildContext context, int index) {
                      return  GridViewWidget(index: index, size: 14, titleSize: 16,);
                    },

                    ),
                  )
                ],
              ),
            ),


          ],
        )
            : isTablet?Column(
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
                    "Consultation".toUpperCase(),
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
              height: 920,
              color: AppColors.backGroundColor,
              child:  Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColoredMantaRayWordWidget(text: 'At Mantaray, we specialize in delivering tailored consultation services designed to foster  growth and innovation within your organization. Our team comprises seasoned consultants  with diverse industry experience, ensuring that we provide customized solutions that  address your specific business challenges and objectives.  Mantaray offers a wide array of geoscience and engineering consulting services. Our  offerings range from highly focused single-well investigations to fully integrated field studies  and field development planning, including project economics and risk assessment. To  ensure consistent, high-quality results, Mantaray applies patented, tightly integrated  workflow processes developed while solving complex problems.',
                      fontSize: 18,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Our Approach : ",style: GoogleFonts.inter(
                            textStyle:const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AppColors.blackColor
                            )
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("• Tailored Solutions: We understand that every organization is unique. That's why we take  the time to listen to your needs and challenges, crafting solutions that are specifically  tailored to meet your requirements.\n• Industry Expertise: Our consultants have a deep understanding of various disciplines in oil  and gas industry as: Exploration, Reservoir Engineering, and Operations. This breadth of  experience allows us to offer insights and strategies that drive success in any sector.\n• Collaborative Partnership: We believe in building strong relationships with our clients  based on trust, transparency, and collaboration. By working closely with your team, we  ensure that our solutions are not only effective but also sustainable in the long run.\n• Continuous Improvement: In a rapidly evolving business landscape, we stay ahead of the  curve by continuously refining our methodologies and embracing the latest trends and  technologies. This ensures that our clients always receive the most innovative and  cutting-edge solutions.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(
                          textStyle:const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                              fontSize: 18
                          )
                      ),),
                  ),
                  const SizedBox(height: 40,),
                  SizedBox(
                    height: 280,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: .5
                      ), itemBuilder: (BuildContext context, int index) {
                      return  GridViewWidget(index: index, size: 16, titleSize: 16,);
                    },

                    ),
                  )
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
                    "Consultation".toUpperCase(),
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
              height: 2160,
              color: AppColors.backGroundColor,
              child:  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ColoredMantaRayWordWidget(text: 'At Mantaray, we specialize in delivering tailored consultation services designed to foster  growth and innovation within your organization. Our team comprises seasoned consultants  with diverse industry experience, ensuring that we provide customized solutions that  address your specific business challenges and objectives.  Mantaray offers a wide array of geoscience and engineering consulting services. Our  offerings range from highly focused single-well investigations to fully integrated field studies  and field development planning, including project economics and risk assessment. To  ensure consistent, high-quality results, Mantaray applies patented, tightly integrated  workflow processes developed while solving complex problems.', fontSize: getResponsiveFontSize(16).sp,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Our Approach : ",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getResponsiveFontSize(16).sp,
                        color: AppColors.blackColor
                      )
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("• Tailored Solutions: We understand that every organization is unique. That's why we take  the time to listen to your needs and challenges, crafting solutions that are specifically  tailored to meet your requirements.\n• Industry Expertise: Our consultants have a deep understanding of various disciplines in oil  and gas industry as: Exploration, Reservoir Engineering, and Operations. This breadth of  experience allows us to offer insights and strategies that drive success in any sector.\n• Collaborative Partnership: We believe in building strong relationships with our clients  based on trust, transparency, and collaboration. By working closely with your team, we  ensure that our solutions are not only effective but also sustainable in the long run.\n• Continuous Improvement: In a rapidly evolving business landscape, we stay ahead of the  curve by continuously refining our methodologies and embracing the latest trends and  technologies. This ensures that our clients always receive the most innovative and  cutting-edge solutions.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                      textStyle:TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                        fontSize: getResponsiveFontSize(16).sp
                      )
                    ),),
                  ),
                  const SizedBox(height: 100,),
                  SizedBox(
                    height:640,
                    child: Center(
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: false,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: .3
                        ), itemBuilder: (BuildContext context, int index) {
                        return  GridViewWidget(index: index, size: 16.sp, titleSize: 16.sp,);
                      },
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        );
      },

    );
  }
}
