import 'package:flutter/material.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsSection extends StatefulWidget {
  const ContactUsSection({super.key});

  @override
  _ContactUsSectionState createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  static  TextStyle optionStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );

  // Method to launch a URL
  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 960;
    final isTablet = screenWidth >= 960 && screenWidth < 1900;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: isMobile?Row(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 150,
                      child: Image.asset(AppImages.appLogo, fit: BoxFit.fill,)),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      child: Image.asset(AppImages.facebookImage,height: 20,),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      child: Image.asset(AppImages.linkedInImage,height: 20,),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('tel:01226151694'); // This should work on a real device
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(AppImages.phoneImage,height: 20,),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(AppImages.emailImage,height: 20,),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
      : isTablet? Row(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 35),
                      height: 270,
                      child: Image.asset(AppImages.appLogo, fit: BoxFit.fill,)),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.facebookImage,height: 40,),
                          Text("Facebook", style: optionStyle.copyWith(fontSize: 13.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.linkedInImage,height: 40,),
                          Text("LinkedIn", style: optionStyle.copyWith(fontSize: 13.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('tel:01226151694'); // This should work on a real device
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.phoneImage,height: 40,),
                          Text("Phone", style: optionStyle.copyWith(fontSize: 13.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.emailImage,height: 40,),
                          Text("Email", style: optionStyle.copyWith(fontSize: 13.sp)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
      : Row(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 70),
                      height: 450,
                      child: Image.asset(AppImages.appLogo, fit: BoxFit.fill,)),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.facebookImage,),
                          Text("Facebook", style: optionStyle.copyWith(fontSize: 14.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.linkedInImage,),
                          Text("LinkedIn", style: optionStyle.copyWith(fontSize: 14.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('tel:01226151694'); // This should work on a real device
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.phoneImage,),
                          Text("Phone", style: optionStyle.copyWith(fontSize: 14.sp)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.emailImage,),
                          Text("Email", style: optionStyle.copyWith(fontSize: 14.sp)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}