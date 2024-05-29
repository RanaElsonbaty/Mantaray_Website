import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/production_section/data/model/product_model.dart';

class ProductBottomWidget extends StatefulWidget {
  const ProductBottomWidget({super.key, required this.index});

  final int index;

  @override
  State<ProductBottomWidget> createState() => _ProductBottomWidgetState();
}

class _ProductBottomWidgetState extends State<ProductBottomWidget> {
  bool click=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          productsBottom[widget.index].title,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 230,
          height: 360, // Adjusted height to accommodate more text
          decoration: BoxDecoration(
            color:click==false? AppColors.primaryColor:AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child:click==false? Column(
            children: [
              Image.asset(
                productsBottom[widget.index].image,
                height: 150,
                width: 230,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 220,
                child: Text(
                  productsBottom[widget.index].description,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        click=!click;
                      });
                    },
                    child: Text(
                      "SHOW MORE",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        click=!click;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          )
              :Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Text(productsBottom[widget.index].more,style: GoogleFonts.inter(
                    textStyle:const TextStyle(
                        color: AppColors.whiteColor
                    )
                ),),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          click=!click;
                        });
                      },
                      child: Text(
                        "SHOW LESS",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          click=!click;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
