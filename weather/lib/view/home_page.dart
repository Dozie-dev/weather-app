import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/utils/app_colors.dart';
import 'package:weather/view/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 650,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.contBackground1,
                    AppColors.contBackground2,
                  ],
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
                        Icon(Icons.menu_outlined, color: AppColors.iconWhite),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.location_on_outlined,
                                color: AppColors.iconWhite,
                              ),
                            ),
                            Text(
                              'Minsk',
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

                    Lottie.asset('assets/anims/storm.json'),

                    Text(
                      '21',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: AppColors.text,
                          fontSize: 130,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Text(
                      'Thunderstorm',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: AppColors.text,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
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

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.text,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(DetailsPage());
                        },
                        child: Row(
                          children: [
                            Text(
                              '7 Days',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.text,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.iconWhite,
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 120,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: AppColors.contBorder,
                            width: 0.5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '23',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: AppColors.text,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Lottie.asset('assets/anims/storm.json', height: 50),
                            SizedBox(height: 10),
                            Text(
                              '10:00',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: AppColors.text,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
