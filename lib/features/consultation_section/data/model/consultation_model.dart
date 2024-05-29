import 'dart:ui';
import 'package:mantaray_website/core/utils/app_colors.dart';

class ConsultationModel {
 final String title;
 final String content;
 final Color color;

  ConsultationModel({
    required this.title,
    required this.content,
    required this.color,
});

}



  List<ConsultationModel> consultList= [
    ConsultationModel(title: "Geosience", content: "We specialize in Geoscience consultation services, offering comprehensive solutions for the  exploration industry. Our team of expert geoscientists and consultants is equipped with  cutting-edge technology and deep industry knowledge to support your projects from  inception to completion.", color: AppColors.firstCardColor),
    ConsultationModel(title: "Geophysical studies  ", content: "Characterization of underground geological structures and lithology with high precision.  distinguishing between rocks that contain hydrocarbons and rocks that do not contain  hydrocarbons. Several strategies have been widely used in seismic description, notably,  seismic attributes, petrophysical models, and fluid saturation. Seismic Data Conditioning.", color: AppColors.secondCardColor),
    ConsultationModel(title: "Petrophysical Evaluation  ", content: "Analyzing the physical and chemical properties of rocks and fluids in a reservoir, using data  from various sources such as well logs, core samples, seismic surveys, and production  history. It is a crucial step for evaluating the potential and performance of oil and gas fields,  as well as planning optimal development and recovery strategies. Choosing the most  effective software for petrophysical interpretation can make a significant difference in the  accuracy, efficiency, and value of the results.", color: AppColors.thirdCardColor),
    ConsultationModel(title: "Geology Modelling", content: "The dip data and facies from the interpreted image logs will be combined with the  petrophysics and seismic attributes to ascertain the mode of deposition, the geometry of the sand  bodies and the sedimentary environment.  The geological model will obtain the required structural and properties model data from which a  3D geological model can be built.", color: AppColors.fourthCardColor),
  ];