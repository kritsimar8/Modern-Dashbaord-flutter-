

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modern_dashboard/config/responsive.dart';
import 'package:modern_dashboard/config/size_config.dart';
import 'package:modern_dashboard/style/colors.dart';
import 'package:modern_dashboard/style/style.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const InfoCard({
    this.icon, this.label, this.amount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth:Responsive.isDesktop(context)? 200.00:150),
      padding: EdgeInsets.only(top:20.0,left:20.0,bottom:20.0,
      right:Responsive.isDesktop(context)?40 :20),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20.00),
        border: Border.all(
          width: 1,
           color: const Color.fromARGB(255, 93, 92, 92),
        ),
        // color: AppColors.white,
         color: const Color.fromARGB(255, 6, 6, 6),
      ),
      child: Column(children: [
        SvgPicture.asset(icon!,width:35.0,color: Colors.white,),
        SizedBox(height:SizeConfig.blockSizeVertical!*2),
        PrimaryText(text: label!,color:AppColors.secondary,size:16.0),
        SizedBox(height:SizeConfig.blockSizeVertical!*2),
        PrimaryText(text: amount!, fontWeight: FontWeight.w700,size:18, color: AppColors.secondary,)
      ],)
    );
  }
}
