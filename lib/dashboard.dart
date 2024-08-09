

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_dashboard/bar_graph/bar_graph.dart';
import 'package:modern_dashboard/component/appbaractionitem.dart';
import 'package:modern_dashboard/component/header.dart';
import 'package:modern_dashboard/component/historyTable.dart';
import 'package:modern_dashboard/component/infocard.dart';
import 'package:modern_dashboard/component/paymentDetailsList.dart';
import 'package:modern_dashboard/component/sidemenu.dart';
import 'package:modern_dashboard/config/responsive.dart';
import 'package:modern_dashboard/config/size_config.dart';
import 'package:modern_dashboard/style/colors.dart';
import 'package:modern_dashboard/style/style.dart';

class Dashboard extends StatelessWidget{
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override 
  Widget build(BuildContext context){
    SizeConfig().init(context);
     List<double> weeklySummary = [
      4.40,
      2.50,
      42.42,
      10.50,
      100.20,
      88.99,
      90.10,
    ];
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu(),),
      appBar: !Responsive.isDesktop(context)? AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        leading: IconButton(
          onPressed: (){
            _drawerKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color:const Color.fromARGB(255, 255, 250, 250)),
        ),
        actions:[
        AppBarActionItem(),
      ],

      ): PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body : SafeArea(
        child: Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            if(Responsive.isDesktop(context))
           const Expanded(
              flex:1,
              child: SideMenu(),
              ),
            Expanded(
              flex:10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                // color: AppColors.secondaryBg,
                 color: Colors.black,
                child:  SingleChildScrollView(
                  padding:EdgeInsets.symmetric(vertical:30.0,horizontal:30.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Header(),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 4,
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: const Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        alignment: WrapAlignment.spaceBetween,
                        children:[
                          InfoCard(
                            icon:'assets/credit-card.svg',
                            label:'Transfer via \n Card number',
                            amount:'\$1200',
                          ),
                          InfoCard(
                            icon:'assets/transfer.svg',
                            label:'Transfer via \n Online Banks',
                            amount:'\$1800',
                          ),
                          InfoCard(
                            icon:'assets/bank.svg',
                            label:'Transfer via \n Same Bank',
                            amount:'\$1100',
                          ),
                          InfoCard(
                            icon:'assets/invoice.svg',
                            label:'Transfer to \n Other Bank',
                            amount:'\$1500',
                          ),
                         
                        ]
                      )
                    ),
                    SizedBox(height:SizeConfig.blockSizeVertical!* 4),
                  const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            PrimaryText(text: 'Balance',
                            size:16,
                            color:AppColors.secondary,
                            ),
                            PrimaryText(
                              text: '\$1500',
                              size:30,
                              fontWeight: FontWeight.w800,
                              color: AppColors.secondary,
                              )
                          ]
                        ),
                        PrimaryText(
                          text: 'Past 30 DAYS',
                          size:16,
                          color: AppColors.secondary,
                          )
                      ]
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                    Container(
                      height:290,
                      child: MyBarGraph(
                        weeklySummary: weeklySummary,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 5,
                    ),
                   const  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        PrimaryText(text: 'History',
                        size:30,
                         fontWeight: FontWeight.w900,
                        ),
                        PrimaryText(text: 'Transaction of last 6 months',
                        size:16,
                        color: AppColors.secondary,
                       
                        ),
                      ]
                    ),
                    SizedBox(height:SizeConfig.blockSizeVertical! * 3),
                    HistoryTable(),
                    if(!Responsive.isDesktop(context))
                      PaymentDetailsList(),
                  ],)
                )
               
              )
              ),
              if(Responsive.isDesktop(context))
            Expanded(
              flex:4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                // color: const Color.fromARGB(255, 224, 224, 241),
                 color: Colors.black,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 30.0,horizontal:30.0),
                  child: Column(children: [
                    AppBarActionItem(),
                    PaymentDetailsList()
                  ],),
                )
              )
              ),
          ]
        )
      )
    );
  }
}
