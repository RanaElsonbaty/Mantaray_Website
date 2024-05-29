import 'dart:collection';

class WebsiteModel{
   String? aboutContent;
   String? aboutHeading;
   String? aboutTitle;

   String? bannerVideoUrl;
   String? bannerDescription;


   String? servicesHeading;
   String? servicesApplicationsContent;
   String? servicesApplicationsImageUrl;
   String? servicesApplicationsTitle;

   String? servicesConsultationContent;
   String? servicesConsultationImageUrl;
   String? servicesConsultationTitle;

   String? servicesProductionContent;
   String? servicesProductionImageUrl;
   String? servicesProductionTitle;

   String? servicesSoftwareContent;
   String? servicesSoftwareImageUrl;
   String? servicesSoftwareTitle;



   String? softwareHeading;
   String? softwareContent;
   String? softwareImageUrl;


   String? reserviorHeading;
   String? reserviorImageUrl;
   String? reserviorFirstTitle;
   String? reserviorFirstContent;
   String? reserviorSecondTitle;
   String? reserviorSecondContent;
   String? reserviorThirdTitle;
   String? reserviorThirdContent;

   String? productionHeading;
   String? productionFirstTopicTitle;
   String? productionSecondTopicTitle;
   String? productionFirstText;
   String? productionSecondText;
   String? productionThirdText;
   String? productionFirstImage;
   String? productionSecondImage;
   String? productionThirdImage;
   String? productionFourthImage;
   String? productionFifthImage;
   String? productionSixImage;
   String? productionFirstTitle;
   String? productionSecondTitle;
   String? productionThirdTitle;
   String? productionFourthTitle;
   String? productionFifthTitle;
   String? productionSixTitle;
   String? productionMoreOne;
   String? productionMoreTwo;
   String? productionMoreThree;
   String? productionMoreFour;
   String? productionMoreFive;
   String? productionMoreSix;
   String? productionFirstContent;
   String? productionSecondContent;
   String? productionThirdContent;
   String? productionFourthContent;
   String? productionFifthContent;
   String? productionSixContent;







  WebsiteModel.fromJson({required Map<String,dynamic>data}){
    aboutContent=data['about']['content'];
    aboutHeading=data['about']['heading'];
    aboutTitle=data['about']['title'];

    bannerDescription=data['banner']['description'];
    bannerVideoUrl=data['banner']['video'];

    servicesHeading=data['services']['heading'];
    servicesApplicationsContent=data['services']['applications']['content'];
    servicesApplicationsImageUrl=data['services']['applications']['image'];
    servicesApplicationsTitle=data['services']['applications']['title'];

    servicesConsultationContent=data['services']['consultation']['content'];
    servicesConsultationImageUrl=data['services']['consultation']['image'];
    servicesConsultationTitle=data['services']['consultation']['title'];

    servicesProductionContent=data['services']['production']['content'];
    servicesProductionImageUrl=data['services']['production']['image'];
    servicesProductionTitle=data['services']['production']['title'];

    servicesSoftwareContent=data['services']['software']['content'];
    servicesSoftwareImageUrl=data['services']['software']['image'];
    servicesSoftwareTitle=data['services']['software']['title'];

    softwareContent=data['software']['content'];
    softwareHeading=data['software']['heading'];
    softwareImageUrl=data['software']['image'];

    reserviorHeading=data['reservior']['heading'];
    reserviorImageUrl=data['reservior']['image'];
    reserviorFirstTitle=data['reservior']['first_title'];
    reserviorFirstContent=data['reservior']['first_content'];
    reserviorSecondTitle=data['reservior']['second_title'];
    reserviorSecondContent=data['reservior']['second_content'];
    reserviorThirdTitle=data['reservior']['third_title'];
    reserviorThirdContent=data['reservior']['third_content'];

    // productionHeading=data['production']['heading'];
    // productionFirstTopicTitle=data['production']['first_topic']['title'];
    // productionSecondTopicTitle=data['production']['second_tobic']['title'];
    // productionFirstText=data['production']['first_topic']['first_text'];
    // productionSecondText=data['production']['first_topic']['second_text'];
    // productionThirdText=data['production']['second_tobic']['content'];
    // productionFirstImage=data['production']['first_topic']['list_view']['images']['first_image'];
    // productionSecondImage=data['production']['first_topic']['list_view']['images']['second_image'];
    // productionThirdImage=data['production']['first_topic']['list_view']['images']['third_image'];
    // productionFourthImage=data['production']['second_tobic']['list_view']['images']['fourth_image'];
    // productionFifthImage=data['production']['second_tobic']['list_view']['images']['fifth_image'];
    // productionSixImage=data['production']['second_tobic']['list_view']['images']['six_image'];
    // productionFirstTitle=data['production']['first_topic']['list_view']['titles']['first_title'];
    // productionSecondTitle=data['production']['first_topic']['list_view']['titles']['second_title'];
    // productionThirdTitle=data['production']['first_topic']['list_view']['titles']['third_title'];
    // productionFourthTitle=data['production']['second_tobic']['list_view']['titles']['fourth_title'];
    // productionFifthTitle=data['production']['second_tobic']['list_view']['titles']['fifth_title'];
    // productionSixTitle=data['production']['second_tobic']['list_view']['titles']['six_title'];
    // productionMoreOne=data['production']['first_topic']['list_view']['more_content']['one'];
    // productionMoreTwo=data['production']['first_topic']['list_view']['more_content']['two'];
    // productionMoreThree=data['production']['first_topic']['list_view']['more_content']['three'];
    // productionMoreFour=data['production']['second_tobic']['list_view']['more_content']['four'];
    // productionMoreFive=data['production']['second_tobic']['list_view']['more_content']['five'];
    // productionMoreSix=data['production']['second_tobic']['list_view']['more_content']['six'];
    // productionFirstContent=data['production']['first_topic']['list_view']['contents']['first_content'];
    // productionSecondContent=data['production']['first_topic']['list_view']['contents']['second_content'];
    // productionThirdContent=data['production']['first_topic']['list_view']['contents']['third_content'];
    // productionFourthContent=data['production']['second_tobic']['list_view']['contents']['fourth_content'];
    // productionFifthContent=data['production']['second_tobic']['list_view']['contents']['fifth_content'];
    // productionSixContent=data['production']['second_tobic']['list_view']['contents']['six_content'];
  }
}