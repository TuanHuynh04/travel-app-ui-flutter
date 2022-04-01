import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widget/app_buttons.dart';
import 'package:travel_app/widget/app_large_text.dart';
import 'package:travel_app/widget/app_text.dart';
import 'package:travel_app/widget/responsive_button.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStarts = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/bg2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 40,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(.8),
                        ),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                            text: "USA, California",
                            color: AppColors.textColor1),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: index < gottenStarts
                                  ? Colors.yellow.withOpacity(.8)
                                  : AppColors.textColor2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(text: "(4.0)", color: AppColors.textColor2)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(.8),
                      size: 28,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Number of people in your group",
                      size: 14,
                      color: AppColors.mainColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  child: AppButtons(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                    backgroundColor: selectedIndex == index
                                        ? Colors.black.withOpacity(.8)
                                        : Colors.grey.withOpacity(.4),
                                    borderColor: Colors.grey.withOpacity(.4),
                                    size: 50,
                                    text: (index + 1).toString(),
                                  ),
                                ),
                              )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(.8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text:
                          "Quis pariatur aliqua cupidatat cupidatat Lorem non ad pariatur anim duis Lorem. Dolor quis aliquip eu in nulla deserunt amet magna. Fugiat quis aliqua amet Lorem deserunt cupidatat magna.",
                      size: 14,
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: AppColors.mainColor,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.mainColor,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
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
