import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/views/drawer.dart';
import 'package:pantho/widgets/custom_infoCard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              Assets.assetsIconsLocation,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              AppTexts.text1,
              style: robotoMediumStyle.copyWith(
                fontSize: 15.sp,
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        actions: [
          Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                // Open the drawer
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                Assets.assetsIconsMenuLeft,
                scale: 4,
              ),
            ),
          ),
          SizedBox(
            width: 17.w,
          ),
        ],
      ),
      drawer: DrawerScreen(), // Ensure the DrawerScreen is set as the drawer
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppTexts.text2,
                style: robotoMediumStyle.copyWith(
                  fontSize: 20.sp,
                  color: AppColors.greyA,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Donate',
                      style: robotoMediumStyle.copyWith(
                        fontSize: 36.sp,
                        color: Color(0xFFFA6393),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' Blood ',
                      style: montserratBoldStyle.copyWith(
                        fontSize: 36.sp,
                        color: Color(0xFFFA6393),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 113.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFFA6393),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        children: [
                          Text(
                            "157",
                            style: robotoMediumStyle.copyWith(
                              fontSize: 20.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("New Blood",
                              style: robotoMediumStyle.copyWith(
                                fontSize: 12.sp,
                                color: AppColors.white,
                              )),
                          Text("Requested",
                              style: robotoMediumStyle.copyWith(
                                fontSize: 12.sp,
                                color: AppColors.white,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 113.w,
                    height: 102.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFE8EFF3),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        children: [
                          Text(
                            "15k",
                            style: robotoMediumStyle.copyWith(
                              fontSize: 20.sp,
                              color: AppColors.greyC,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Save Lives",
                              style: robotoMediumStyle.copyWith(
                                fontSize: 12.sp,
                                color: AppColors.greyC,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Each Donations can help save up to',
                      style: robotoMediumStyle.copyWith(
                        fontSize: 14,
                        color: AppColors.dark,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' 3 Lives! ',
                      style: robotoMediumStyle.copyWith(
                        fontSize: 14,
                        color: AppColors.dark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 280,
                    width: double.infinity,
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(isVisible: false),
                      primaryYAxis: NumericAxis(isVisible: false),
                      plotAreaBorderWidth: 0,
                      series: <CartesianSeries<ChartData, String>>[
                        AreaSeries<ChartData, String>(
                          dataSource: getChartData(),
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          color: Color(0xFFFA6393).withOpacity(0.2),
                          borderColor: Color(0xFFFA6393),
                          borderWidth: 2,
                          markerSettings: MarkerSettings(
                            isVisible: true,
                            height: 8,
                            width: 8,
                            shape: DataMarkerType.circle,
                            borderWidth: 2,
                            borderColor: Color(0xFFFA6393),
                          ),
                        ),
                        ScatterSeries<ChartData, String>(
                          dataSource: [getChartData().last],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          markerSettings: MarkerSettings(
                            isVisible: true,
                            height: 20,
                            width: 20,
                            shape: DataMarkerType.triangle,
                            color: Color(0xFFFA6393),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoCard(
                    title: "Find A Donor",
                    subtitle: "New Blood",
                    count: "235k",
                    color: Color(0xFFFA6393).withOpacity(0.2),
                    iconPath: Assets.assetsIconsSearch,
                    imageColor: AppColors.primary,
                  ),
                  SizedBox(width: 30),
                  InfoCard(
                    title: "Blood Request",
                    subtitle: "Requested",
                    count: "500k",
                    color: Color(0xFFF5B800).withOpacity(0.2),
                    iconPath: Assets.assetsIconNotifications,
                    imageColor: Color(0xFFF5B800),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoCard(
                    title: "Blood Bank",
                    subtitle: "map",
                    count: "map",
                    color: Color(0xFF00CC99).withOpacity(0.2),
                    iconPath: Assets.assetsIconsDrop,
                    imageColor: Color(0xFF00CC99),
                  ),
                  SizedBox(width: 30),
                  InfoCard(
                    title: "Blood Request",
                    subtitle: "Requested",
                    count: "500k",
                    color: AppColors.greyB.withOpacity(0.2),
                    iconPath: Assets.assetsIconsSettings,
                    imageColor: AppColors.greyB,
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData('Jan', 35),
      ChartData('Feb', 28),
      ChartData('Mar', 34),
      ChartData('Apr', 32),
      ChartData('May', 40),
      ChartData('Jun', 45),
    ];
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
