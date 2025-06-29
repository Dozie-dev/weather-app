import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/utils/app_colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.contBackground1, AppColors.contBackground2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 0.5,
                            color: AppColors.iconWhite,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.iconWhite,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.calendar_today_rounded,
                              color: AppColors.iconWhite,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '7 Days',
                            style: GoogleFonts.playfairDisplay(
                              textStyle: TextStyle(
                                color: AppColors.text,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/icons/dots.png',
                          height: 24,
                          color: AppColors.iconWhite,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/anims/storm.json', height: 100),
                      SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomorrow',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: AppColors.text,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                          ),

                          Text(
                            '21',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: AppColors.text,
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Monday, 24 May',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: AppColors.text,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Divider(thickness: 0.3),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.cloud_circle_outlined,
                              color: AppColors.iconWhite,
                            ),
                            Text(
                              '13 Km/h',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                            Text(
                              'Wind',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons.cloud_circle_outlined,
                              color: AppColors.iconWhite,
                            ),
                            Text(
                              '13 Km/h',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                            Text(
                              'Wind',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Icon(
                              Icons.cloud_circle_outlined,
                              color: AppColors.iconWhite,
                            ),
                            Text(
                              '13 Km/h',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                            Text(
                              'Wind',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: AppColors.text),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
