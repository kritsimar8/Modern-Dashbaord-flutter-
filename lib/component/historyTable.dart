

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modern_dashboard/config/responsive.dart';
import 'package:modern_dashboard/config/size_config.dart';
import 'package:modern_dashboard/data.dart';
import 'package:modern_dashboard/style/colors.dart';
import 'package:modern_dashboard/style/style.dart';

class HistoryTable extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection:Responsive.isDesktop(context)? Axis.vertical : Axis.horizontal,
     
      child:SizedBox(
        width: Responsive.isDesktop(context)? double.infinity : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(transactionHistory.length, (index)=>
          TableRow(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

          ),
          children:[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top:10.0, bottom:10.0,left:20.0),
              child:CircleAvatar(
                radius: Responsive.isDesktop(context)? 17 : 12,
                backgroundImage: NetworkImage(transactionHistory[index]['avatar']!),
              )
            ),
            PrimaryText(
              text: transactionHistory[index]['label']!,
             size: Responsive.isDesktop(context) ? 16:12,
              color: AppColors.secondary,
              ),
            PrimaryText(
              text: transactionHistory[index]['time']!,
              size: Responsive.isDesktop(context) ? 16:12,
              color: AppColors.secondary,
              ),
              PrimaryText(
                text: transactionHistory[index]['amount']!,
                size: Responsive.isDesktop(context) ? 16:12,
                color: AppColors.secondary,
                ),
              PrimaryText(
                text: transactionHistory[index]['status']!,
                size: Responsive.isDesktop(context) ? 16:12,
                color: AppColors.secondary,
                ),
          ]
          )
          )
        )
      )
    );
  }
}