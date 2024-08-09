

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_dashboard/config/size_config.dart';
import 'package:modern_dashboard/style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        // color: const Color.fromARGB(255, 224, 224, 241),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top:20),
              child: SizedBox(
              width:35,
              height:35,  
              child:
              SvgPicture.asset('assets/mac-action.svg'),),
            ),
          
              
              IconButton(
                onPressed: (){},
                icon: SvgPicture.asset('assets/home.svg', color: const Color.fromARGB(255, 131, 129, 129),width: 30,),
                
                ),
           
           
            
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/pie-chart.svg', color: AppColors.iconGray,width: 30,),
              iconSize: 20,
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/clipboard.svg', color: AppColors.iconGray,width:30),
              iconSize: 20,
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/credit-card.svg', color: AppColors.iconGray,width: 30,),
              iconSize: 20,
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/trophy.svg', color: AppColors.iconGray,width:30),
              iconSize: 20,
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
            IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/invoice.svg', color: AppColors.iconGray,width:30),
              iconSize: 20,
              padding: EdgeInsets.symmetric(vertical: 20.0),
            ),
          ],)
        )
      ),
    );
  }
}