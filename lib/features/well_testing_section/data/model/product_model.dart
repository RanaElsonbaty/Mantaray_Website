import 'package:mantaray_website/core/utils/app_images.dart';

class ProductModel {
  final String title;
  final String more;
  final String description;
  final String image ;
  ProductModel(
      {
        required this.title,
        required this.description,
        required this.image,
        required this.more,
      }
      );
}


List<ProductModel>  productsTop  = [
  ProductModel( image: AppImages.oneImage, description: 'Introducing our clamp meter – the smart  solution for accurate current measurements...', title: 'Single phase flowmeter – SPFM', more: 'with- out circuit interruption. Choose from  Load Current or Leakage Current models,  covering AC/DC and various methods.  Discover a new era of effortless and safe  measurements.'),
  ProductModel( image: AppImages.twoImage,  description: 'Our MPFM represents are most widely  deployed and cost effective MPFM solution...', title: 'Multi phase flowmeter – MPFM', more: 'The single range MPFM is versatile. It can be  deployed both onshore and offshore. It can  also be vehicle mounted for mobile well  testing applications.'),
  ProductModel( image: AppImages.threeImage, description: 'Experience unmatched accuracy in in-depth  assessment with Echometer. Using cutting edge...', title: 'Echometer', more: 'echo-based technology, this compact  device  delivers  instant,  reliable  measurements for both water and  underground applications.'),
] ;



List<ProductModel>  productsBottom  = [
  ProductModel( image: AppImages.fourImage, title: 'Logistics & Chemical Supply', description: 'Our expertise in polymer chemistry and  engineering allows any polymer flood project to...', more: 'be completed in full with customized solutions.  Due to the unique nature of each oilfield, we  offer  tailored polymer and equipment  solutions, from conceptual studies through full field operations.'),
  ProductModel( image: AppImages.fiveImage,  title: 'Logistics & Chemical Supply', description: 'Our laboratory technicians work closely with  local and interationato determine the best...', more: 'polymer to suit any oilfield application.  From  polymer selection at project start-up to quality  assurance and quality control, Mantaray is able  to ensure that the project runs smoothly.'),
  ProductModel( image: AppImages.sixImage, title: 'Field Operations', description: 'Training, installation, commissioning, start-up,  routine fluid testing, troubleshooting, and...', more: 'continued laboratory testing services are all  available to our customers.'),
] ;
