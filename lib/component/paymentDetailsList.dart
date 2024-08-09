

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_dashboard/component/paymentListTile.dart';
import 'package:modern_dashboard/config/size_config.dart';
import 'package:modern_dashboard/data.dart';
import 'package:modern_dashboard/style/colors.dart';
import 'package:modern_dashboard/style/style.dart';

class PaymentDetailsList extends StatelessWidget {
  const PaymentDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        SizedBox(
          height: SizeConfig.blockSizeVertical!*5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow:const [BoxShadow(
              // color: AppColors.iconGray,
              color: Color.fromARGB(255, 52, 51, 51),
              blurRadius: 15.0,
              offset: const Offset(10.0,15.0)
            )]
          ),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 5,),
       const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(text: 'Recent Activities', size: 18, fontWeight: FontWeight.w800,color:AppColors.secondary),
            PrimaryText(text: '02 Mar 2021', size:14,fontWeight: FontWeight.w400,color:AppColors.secondary),
        ],),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index)=>PaymentListTile(
            icon: recentActivities[index]['icon'],
            label:recentActivities[index]['label'],
            amount: recentActivities[index]['amount'],
          ))
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 5,),
          const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(text: 'Upcoming Activities', size: 18, fontWeight: FontWeight.w800,),
            PrimaryText(text: '02 Mar 2021', size:14,fontWeight: FontWeight.w400,color:AppColors.secondary),
        ],),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(upcomingPayments.length, (index)=>PaymentListTile(
            icon: upcomingPayments[index]['icon'],
            label:upcomingPayments[index]['label'],
            amount: upcomingPayments[index]['amount'],
          ))
        ),

      ]
    );
  }
}
