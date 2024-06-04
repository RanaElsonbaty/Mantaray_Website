import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsSection extends StatefulWidget {
  const ContactUsSection({super.key});

  @override
  _ContactUsSectionState createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

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
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.blackColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColors.contactUsColor,
              hoverColor: AppColors.contactUsColor,
              gap: 4,
              activeColor: Colors.black,
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColors.contactUsColor,
              color: AppColors.whiteColor,
              tabs:  [
                 GButton(
                  leading:Image.asset(AppImages.facebookImage,height: 30,width: 20,) ,
                  icon: Icons.facebook,
                  text: 'Facebook',
                   textColor: AppColors.whiteColor,
                ),
                GButton(
                  leading:Image.asset(AppImages.linkedInImage,height: 30,width: 20,) ,
                  text: 'LinkedIn', icon: Icons.label,
                  textColor: AppColors.whiteColor,
                ),
                 GButton(
                   leading:Image.asset(AppImages.phoneImage,height: 30,width: 20,) ,
                  icon: Icons.phone_outlined,
                  text: 'Phone',
                   textColor: AppColors.whiteColor,
                ),
                 GButton(
                   leading:Image.asset(AppImages.emailImage,height: 30,width: 20,) ,
                  icon: Icons.email,
                  text: 'Email',
                   textColor: AppColors.whiteColor,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  switch (index) {
                    case 0:
                      _launchUrl('https://www.facebook.com/profile.php?id=61560387304276');
                      break;
                    case 1:
                      _launchUrl('https://www.linkedin.com/company/103261271/admin/feed/posts/?feedType=following');
                      break;
                    case 2:
                      _launchUrl('tel:01226151694'); // This should work on a real device
                      break;
                    case 3:
                      _launchUrl('mailto:Support@mantarayltd.com'); // Use mailto: scheme for email
                      break;
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
