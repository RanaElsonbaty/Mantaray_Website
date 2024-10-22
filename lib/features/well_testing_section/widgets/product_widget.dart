import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mantaray_website/core/utils/app_colors.dart';
import 'package:mantaray_website/features/well_testing_section/data/model/product_model.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.index, required this.titleFontSize, required this.containerHeight, required this.containerWidth, required this.imageHeight, required this.imageWidth, required this.descriptionFontSize, required this.moreFontSize, required this.showSize});

  final int index;
  final double titleFontSize;
  final double containerHeight;
  final double containerWidth;
  final double imageHeight;
  final double imageWidth;
  final double descriptionFontSize;
  final double moreFontSize;
  final double showSize;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool click=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          productsTop[widget.index].title,
          style: GoogleFonts.inter(
            textStyle:  TextStyle(
              fontSize: widget.titleFontSize,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: widget.containerWidth,
          height: widget.containerHeight, // Adjusted height to accommodate more text
          decoration: BoxDecoration(
            color:click==false? AppColors.primaryColor:AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child:click==false? Column(
            children: [
              Image.asset(
                productsTop[widget.index].image,
                height: widget.imageHeight,
                width: widget.imageWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  productsTop[widget.index].description,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    textStyle:  TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.descriptionFontSize,
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
                        textStyle:   TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                          fontSize: widget.showSize
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
                Text(productsTop[widget.index].more,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: widget.moreFontSize
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
                          textStyle:  TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: widget.showSize,
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
