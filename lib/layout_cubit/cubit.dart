import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mantaray_website/layout_cubit/states.dart';
import 'package:mantaray_website/model/website_model.dart';

class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit(): super(LayoutInitialState());

  WebsiteModel? websiteModel;
  void getData()async{
   try{
     await FirebaseFirestore.instance.collection('website').doc("NmNa6wk3qERMmT186QxP").get().then((value){
      websiteModel= WebsiteModel.fromJson(data: value.data()!);
      print(websiteModel?.aboutContent);
      debugPrint("********${value.data()}");
      debugPrint('*****************WebsiteModel: $websiteModel');
     });
     emit(SuccessState());
   }on FirebaseException catch(e){
     debugPrint("***Error is ***$e");
     emit(FailedState());
   }
  }
}