import 'package:flutter/material.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/core/utils/app_images.dart';
import 'package:mantaray_website/features/about_us_section/views/about_us_section.dart';
import 'package:mantaray_website/features/consultation_section/views/consultation_section.dart';
import 'package:mantaray_website/features/contact_us_section/views/contact_us_section.dart';
import 'package:mantaray_website/features/eor_section/views/eor_section.dart';
import 'package:mantaray_website/features/home/data/widgets/home_body_screen.dart';
import 'package:mantaray_website/features/home_section/views/home_section.dart';
import 'package:mantaray_website/features/our_services_section/views/our_services_section.dart';
import 'package:mantaray_website/features/reservior_section/views/reservior_section.dart';
import 'package:mantaray_website/features/software_section/views/software_section.dart';
import 'package:mantaray_website/features/well_testing_section/views/well_testing_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutUsKey = GlobalKey();
  final GlobalKey _ourServicesKey = GlobalKey();
  final GlobalKey _wellTestingKey = GlobalKey();
  final GlobalKey _softwareKey = GlobalKey();
  final GlobalKey _consultationKey = GlobalKey();
  final GlobalKey _eorKey = GlobalKey();
  final GlobalKey _contactUsKey = GlobalKey();


  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isMobile = screenWidth < 960;
        final isTablet = screenWidth >= 960 && screenWidth < 1900;

        void refreshPage() {
          setState(() {});
          _scrollController.jumpTo(0);
        }
        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration:  BoxDecoration(
                  color: AppColors.greyColor.withOpacity(.8),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
            ),
            toolbarHeight: isMobile?95:isTablet?140:200,
            centerTitle:isMobile? true:false,
            title: isMobile?GestureDetector(
                onTap: refreshPage,
                child: Image.asset(AppImages.appLogo,height: 120,width: 120,))
                :GestureDetector(
                onTap: refreshPage,
                child: Image.asset(AppImages.appLogo,height: isTablet?160:220,width:isTablet?180: 220,)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: isMobile
                ? null
                : [
              buildTextButton(label: 'Home', key: _homeKey, ),
              buildTextButton(label: 'Our Services', key: _ourServicesKey, ),
              buildTextButton(label: 'Well Testing', key: _wellTestingKey, ),
              buildTextButton(label: 'EOR', key: _eorKey, ),
              buildTextButton(label: 'Software', key: _softwareKey, ),
              buildTextButton(label: 'Consultation', key: _consultationKey, ),
              buildTextButton(label: 'About Us', key: _aboutUsKey, ),
              buildTextButton(label: 'Contact Us', key: _contactUsKey, ),
            ],
          ),
          drawer: isMobile
              ? Drawer(
            backgroundColor: AppColors.greyColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: const BoxDecoration(
                      color: AppColors.greyColor,
                    ),
                    child: Image.asset(AppImages.appLogo,height: 200,width: 200,)
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Home', key: _homeKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Our Services', key: _ourServicesKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Well Testing', key: _wellTestingKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'EOR', key: _eorKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Software', key: _softwareKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Consultation', key: _consultationKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'About Us', key: _aboutUsKey, context: context,),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(label: 'Contact Us', key: _contactUsKey, context: context,),
                ),
              ],
            ),
          )
              : null,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSection(key: _homeKey,widget: const HomeSection(), height: 450, color: AppColors.whiteColor),
                buildSection(key: _ourServicesKey, widget: const OurServicesSection(), height:isMobile? 2250:isTablet?1950:2350, color:  AppColors.whiteColor),
                buildSection(key: _wellTestingKey, widget: const WellTestingSection(), height:isMobile?900:isTablet?750: 1700, color: AppColors.whiteColor),
                buildSection(key: _eorKey, widget: const EorSection(), height:isMobile?820:isTablet?700: 1550, color: AppColors.whiteColor),
                buildSection(key: _softwareKey, widget: const SoftwareSection(), height:isMobile?520:isTablet?970:970, color:  AppColors.whiteColor),
                buildSection(key: _consultationKey, widget:const ConsultationSection(), height:isMobile? 2100:isTablet?1050 :2380, color:  AppColors.whiteColor),
                const ReserviorSection(),
                buildSection(key: _aboutUsKey, widget: const AboutUsSection(), height:isTablet?900: isMobile?850:1200, color:  AppColors.whiteColor),
                buildSection(key: _contactUsKey, widget:const ContactUsSection(), height: isMobile?300:isTablet?400:900, color:  AppColors.blackColor),
              ],
            ),
          ),
        );
      },
    );
  }
}
