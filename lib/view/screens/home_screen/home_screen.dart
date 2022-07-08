import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/view/screens/home_screen/ataa_number.dart';
import 'package:ataa_charity_system/view/screens/home_screen/card_donation.dart';
import 'package:ataa_charity_system/view/screens/home_screen/carousel.dart';
import 'package:ataa_charity_system/view/screens/profile_screen/active_screen/sponsor-all/main_mune_sponsor_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../model/carousel_items.dart';
import '../../../model/donaition_items.dart';
import '../gift_screen/gift_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'Home_screen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = CarouselController();
  int activeIndex = 0;
  bool isEngilsh = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        // actions: [SvgPicture.asset('assets/images/ataa.png')],
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/shopping.svg')),
        actions: [
          IconButton(
              onPressed: () {
                isEngilsh
                    ? context.setLocale(const Locale('ar'))
                    : context.setLocale(const Locale('en'));
                setState(() {
                  isEngilsh = !isEngilsh;
                });
              },
              icon: isEngilsh
                  ? SvgPicture.asset('assets/icons/e_letter.svg',
                      color: Colors.white)
                  : SvgPicture.asset(
                      'assets/icons/a_letter.svg',
                      color: Colors.white,
                    )),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(top: defultPadding),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                            reverse: true,
                            autoPlayAnimationDuration:
                                const Duration(seconds: 2),
                            // enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                          ),
                          itemCount: 2,
                          itemBuilder:
                              (BuildContext context, int index, int realIndex) {
                            return CreateCarousel(
                              imageUrl2: imageUrl[0],
                              index: index,
                              title: title[index],
                              subTitle: subTitle[index],
                              onTap: () {
                                if (index == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MainMuneSponsorScreen()));
                                } else if (index == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GiftScreen()));
                                }
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'donation campign'.tr(),
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.primary1,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'more'.tr(),
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppColors.primary1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defultPadding),
                              child: Row(
                                children: campaign.map(((e) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: defultPadding / 1.5),
                                    child: CardsDonaition(
                                      image: e.imageUrll,
                                      title_donation: e.title_donation,
                                      type: e.type,
                                      cost: e.cost,
                                      remember: e.remember,
                                      onTab: () {},
                                    ),
                                  );
                                })).toList(),
                              )),
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'donation complete'.tr(),
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.primary1,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'more'.tr(),
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppColors.primary1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defultPadding),
                              child: Row(children: [
                                CompletDonaition(
                                  size: size,
                                  image:
                                      'https://images.unsplash.com/photo-1560243563-062bfc001d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2xvdGhpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
                                  title: 'حملة إكساء',
                                ),
                                const SizedBox(
                                  width: defultPadding,
                                ),
                                CompletDonaition(
                                  size: size,
                                  image:
                                      'https://images.unsplash.com/photo-1580582932707-520aed937b7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2Nob29sfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                  title: 'حملة بناء مدرسة',
                                ),
                                const SizedBox(
                                  width: defultPadding,
                                ),
                                CompletDonaition(
                                  size: size,
                                  image:
                                      'https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJ1aWxkaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                  title: 'حملة إعمار',
                                ),
                              ]),
                            )),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        const Text(
                          "( ويكفر عنكم من سيئاتكم والله بما تعملون خبير )  ",
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        AtaaNumbers(size: size),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        const Text(
                          "( لن تنالوا البر حتى تنفقوا مما تحبون  )  ",
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        Image.asset(
                          "assets/images/ataa.png",
                          height: 80,
                        ),
                        const SizedBox(
                          height: defultPadding,
                        )
                      ])
                    ]));
          }),
    );
  }
}

class CompletDonaition extends StatelessWidget {
  const CompletDonaition({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height / 3,
        width: size.width / 1.7,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: size.height / 4,
              width: size.width / 1.7,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: AppColors.primary1, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
