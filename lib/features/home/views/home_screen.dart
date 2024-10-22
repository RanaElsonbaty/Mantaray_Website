import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:responsive_sizer/responsive_sizer.dart';

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
        final screenWidth = MediaQuery
            .of(context)
            .size
            .width;
        final isMobile = screenWidth < 960;
        final isTablet = screenWidth >= 960 && screenWidth < 1900;

        void refreshPage() {
          setState(() {});
          _scrollController.jumpTo(0);
        }

        return Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(.8),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            toolbarHeight: isMobile ? 95 : 125,
            centerTitle: isMobile ? true : false,
            title: GestureDetector(
                onTap: refreshPage,
                child: Image.asset(
                  AppImages.appLogo,
                  height: isMobile ? 120 : 150,
                  width: isMobile ? 120 : 150,
                )),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: isMobile
                ? null
                : [
              buildTextButton(label: 'Home', key: _homeKey),
              PopupMenuButton<String>(
                onSelected: (String result) {
                  switch (result) {
                    case 'Our Services':
                      Future.delayed( const Duration(milliseconds: 300), () {
                        scrollToSection(_ourServicesKey);
                      });
                      break;
                    case 'Well Testing':
                      Future.delayed( const Duration(milliseconds: 300), () {
                        scrollToSection(_wellTestingKey);
                      });
                      break;
                    case 'EOR':
                      Future.delayed( const Duration(milliseconds: 300), () {
                        scrollToSection(_eorKey);
                      });
                      break;
                    case 'Consultation':
                      Future.delayed( const Duration(milliseconds: 300), () {
                        scrollToSection(_consultationKey);
                      });
                      break;
                  }
                },
                itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<String>>[
                   PopupMenuItem<String>(
                    value: 'Our Services',
                    child: Text('Our Services', style: GoogleFonts.inter(
                      textStyle:  TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp, // Use a fixed font size initially
                      ),
                    ),),
                  ),
                   PopupMenuItem<String>(
                    value: 'Well Testing',
                    child: Text('Well Testing', style: GoogleFonts.inter(
                      textStyle:  TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp, // Use a fixed font size initially
                      ),
                    ),),
                  ),
                   PopupMenuItem<String>(
                    value: 'EOR',
                    child: Text('EOR', style: GoogleFonts.inter(
                      textStyle:  TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp, // Use a fixed font size initially
                      ),
                    ),),
                  ),
                   PopupMenuItem<String>(
                    value: 'Consultation',
                    child: Text('Consultation', style: GoogleFonts.inter(
                      textStyle:  TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp, // Use a fixed font size initially
                      ),
                    ),),
                  ),
                ],
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: Text(
                      'Our Services',
                      style: GoogleFonts.inter(
                        textStyle:  TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp, // Use a fixed font size initially
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              buildTextButton(label: 'Software', key: _softwareKey),
              buildTextButton(label: 'About Us', key: _aboutUsKey),
              buildTextButton(label: 'Contact', key: _contactUsKey),
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
                    child: Image.asset(
                      AppImages.appLogo,
                      height: 200,
                      width: 200,
                    )),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Home',
                    key: _homeKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Our Services',
                    key: _ourServicesKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Well Testing',
                    key: _wellTestingKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'EOR',
                    key: _eorKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Software',
                    key: _softwareKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Consultation',
                    key: _consultationKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'About Us',
                    key: _aboutUsKey,
                    context: context,
                  ),
                ),
                ListTile(
                  title: buildTextButtonMobileAndTablet(
                    label: 'Contact',
                    key: _contactUsKey,
                    context: context,
                  ),
                ),
              ],
            ),
          )
              : null,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: isMobile? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all( Radius.circular(18.sp)),
                  child: buildSection(
                      key: _homeKey,
                      widget:  const HomeSection(),
                      height: 450,
                      color: AppColors.whiteColor),
                ),
                buildSection(
                    key: _ourServicesKey,
                    widget: const OurServicesSection(),
                    height: isMobile ? 2300 : isTablet ? 1630 : 2000,
                    color: AppColors.whiteColor),
                buildSection(
                    key: _wellTestingKey,
                    widget: const WellTestingSection(),
                    height: isMobile ? 900 : isTablet ? 770 : 1550,
                    color: AppColors.whiteColor),
                buildSection(
                    key: _eorKey,
                    widget: const EorSection(),
                    height: isMobile ? 820 : isTablet ? 700 : 1400,
                    color: AppColors.whiteColor),
                buildSection(
                    key: _softwareKey,
                    widget: const SoftwareSection(),
                    height: isMobile ? 520 : isTablet ? 850 : 1200,
                    color: AppColors.whiteColor),
                buildSection(
                    key: _consultationKey,
                    widget: const ConsultationSection(),
                    height: isMobile ? 2100 : isTablet ? 1050 : 1800,
                    color: AppColors.whiteColor),
                const ReserviorSection(),
                buildSection(
                    key: _aboutUsKey,
                    widget: const AboutUsSection(),
                    height: isMobile ? 250 : isTablet ? 350 : 600,
                    color: AppColors.whiteColor),
                ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(14.sp),topLeft:  Radius.circular(14.sp)),
                  child: buildSection(
                      key: _contactUsKey,
                      widget: const ContactUsSection(),
                      height: isMobile ? 250 : isTablet ? 350 : 550,
                      color: AppColors.blackColor),
                ),
              ],
            )
                : Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all( Radius.circular(18.sp)),
                    child: buildSection(
                        key: _homeKey,
                        widget:  const HomeSection(),
                        height: 450,
                        color: AppColors.whiteColor),
                  ),
                  buildSection(
                      key: _ourServicesKey,
                      widget: const OurServicesSection(),
                      height: isMobile ? 2300 : isTablet ? 1630 : 2000,
                      color: AppColors.whiteColor),
                  buildSection(
                      key: _wellTestingKey,
                      widget: const WellTestingSection(),
                      height: isMobile ? 900 : isTablet ? 770 : 1550,
                      color: AppColors.whiteColor),
                  buildSection(
                      key: _eorKey,
                      widget: const EorSection(),
                      height: isMobile ? 820 : isTablet ? 700 : 1400,
                      color: AppColors.whiteColor),
                  buildSection(
                      key: _softwareKey,
                      widget: const SoftwareSection(),
                      height: isMobile ? 520 : isTablet ? 850 : 1200,
                      color: AppColors.whiteColor),
                  buildSection(
                      key: _consultationKey,
                      widget: const ConsultationSection(),
                      height: isMobile ? 2100 : isTablet ? 1050 : 1800,
                      color: AppColors.whiteColor),
                  const ReserviorSection(),
                  buildSection(
                      key: _aboutUsKey,
                      widget: const AboutUsSection(),
                      height: isMobile ? 250 : isTablet ? 350 : 600,
                      color: AppColors.whiteColor),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(14.sp),topLeft:  Radius.circular(14.sp)),
                    child: buildSection(
                        key: _contactUsKey,
                        widget: const ContactUsSection(),
                        height: isMobile ? 250 : isTablet ? 350 : 550,
                        color: AppColors.blackColor),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
