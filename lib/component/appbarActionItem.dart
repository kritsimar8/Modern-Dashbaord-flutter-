
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_dashboard/style/colors.dart';

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: (){},
         icon: SvgPicture.asset(
          'assets/calendar.svg',
          width:20.0,
         )
         ),
         SizedBox(width:10.0),
          IconButton(onPressed: (){},
         icon: SvgPicture.asset(
          'assets/ring.svg',
          width:20.0,
         )
         ),
         SizedBox(width:10.0),
        const Row(
          children:[
            CircleAvatar(
              radius:17,
              backgroundImage: AssetImage('assets/man.jpeg'),
            ),
            Icon(Icons.arrow_drop_down_outlined,color: AppColors.black),
          ]
         )
    
    ],);
  }
}

