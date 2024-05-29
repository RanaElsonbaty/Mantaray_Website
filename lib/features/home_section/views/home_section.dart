import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/layout_cubit/cubit.dart';
import 'package:mantaray_website/layout_cubit/states.dart';

class HomeSection extends StatelessWidget {
   const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final layoutCubit =BlocProvider.of<LayoutCubit>(context)..getData();
    return  BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, state) {
        return layoutCubit.websiteModel!=null? Stack(
            children: [
               Container(
                  width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadiusDirectional.circular(15)
                 ),
                  child:Image.asset("assets/video/Welcome.gif",fit: BoxFit.fill,height: 450,),
               ),
                   
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Center(
                  child: Text( layoutCubit.websiteModel!.bannerDescription!,
                    maxLines: 8,
                    style: GoogleFonts.inter(
                        textStyle:const TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18
                        )
                    ),),
                ),
              )])
        :Container();
      },

    );
  }
}
