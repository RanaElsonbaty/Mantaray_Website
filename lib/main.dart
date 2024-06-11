import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantaray_website/features/home/views/home_screen.dart';
import 'package:mantaray_website/firebase_options.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) {
        return const MyApp();
      },
     ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveSizer(
        builder: (context, orientation, screenType){
      return  MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>LayoutCubit())
        ],
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: const HomeScreen(),
        ),
      );
    });
  }
}

