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
  static  TextStyle optionStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    fontSize: 14.sp
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

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          screenWidth < 1800
              ? Expanded(
                child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                Expanded(child: Image.asset(AppImages.appLogo, height: 250)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell( onTap: (){
                        setState(() {
                          _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
                        });
                      },child: Image.asset(AppImages.facebookImage,height: 4.h,)),
                      InkWell(onTap: (){
                        setState(() {
                          _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                        });
                      },child: Image.asset(AppImages.linkedInImage,height: 4.h,)),
                      InkWell(onTap: (){
                        setState(() {
                          _launchUrl('tel:01226151694'); // This should work on a real device
                        });
                      },child: Image.asset(AppImages.phoneImage,height: 4.h,)),
                      InkWell(onTap: (){
                        setState(() {
                          _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                        });
                      },child: Image.asset(AppImages.emailImage,height: 4.h,)),
                  ],),
                ),
                            ],
                          ),
              )
              : Row(
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Image.asset(AppImages.appLogo, height: 600,fit: BoxFit.fill,),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120,right: 40),
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
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.facebookImage,),
                               Text("Facebook", style: optionStyle),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.linkedInImage,),
                              Text("LinkedIn", style: optionStyle),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _launchUrl('tel:01226151694'); // This should work on a real device
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.phoneImage,),
                              Text("Phone", style: optionStyle),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(AppImages.emailImage,),
                              Text("Email", style: optionStyle),
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
        ],
      ),
    );
  }
}


//
// setState(() {
// _selectedIndex = index;
// switch (index) {
// case 0:
// _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
// break;
// case 1:
// _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
// break;
// case 2:
// _launchUrl('tel:01226151694'); // This should work on a real device
// break;
// case 3:
// _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
// break;
// }
// });