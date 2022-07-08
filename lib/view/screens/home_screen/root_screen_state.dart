
import 'package:ataa_charity_system/translation/locale_keys.g.dart';
import 'package:ataa_charity_system/view/screens/volunter_campign_screen/volunter_campign_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/theme.dart';
import '../../../logic/navigation/constants/nav_items.dart';
import '../../../logic/navigation/navigation_bloc.dart';
import '../donation_camigan_screen/donation_campigan_screen.dart';
import '../payment_donation_screen/speed_donation.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen.dart';

class RootScreenState extends StatefulWidget {
  const RootScreenState({Key? key}) : super(key: key);

  @override
  State<RootScreenState> createState() => _RootScreenStateState();
}

///  this class to Root Navigation bar
class _RootScreenStateState extends State<RootScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Material(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: BottomNavigationBar(
                  elevation: 0,
                  // backgroundColor: Colors.transparent,
                  currentIndex: state.index,
                  selectedItemColor: AppColors.primary1,
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: false,
                  showSelectedLabels: true,
                  selectedFontSize: 10,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Column(
                        children: const [
                          Icon(
                            Icons.home,
                            size: 25,
                            color: AppColors.primary1,
                          ),
                        ],
                      ),
                      label: LocaleKeys.main.tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/charity.svg",
                            height: 25,
                            width: 25,
                            color: AppColors.primary1,
                          ),
                        ],
                      ),
                      label: LocaleKeys.donation_cam.tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              SpeedDonationScreen(context);
                            },
                            child: Container(
                              height: 53,
                              width: 70,
                              decoration: BoxDecoration(
                                color: AppColors.textLigth,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/icons/branch.svg",
                                  height: 25,
                                  width: 25,
                                  color: AppColors.primary1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      label: LocaleKeys.donation.tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/volunteer.svg",
                            height: 25,
                            width: 25,
                            color: AppColors.primary1,
                          ),
                        ],
                      ),
                      label: LocaleKeys.volunteer_cam.tr(),
                    ),
                    BottomNavigationBarItem(
                      icon: Column(
                        children: const [
                          Icon(
                            Icons.person,
                            size: 25,
                            color: AppColors.primary1,
                          ),
                        ],
                      ),
                      label: LocaleKeys.profile.tr(),
                    ),
                  ],
                  onTap: (index) {
                    if (index == 0) {
                      BlocProvider.of<NavigationBloc>(context)
                          .getNavBarItem(NavbarItem.home);
                    } else if (index == 1) {
                      BlocProvider.of<NavigationBloc>(context)
                          .getNavBarItem(NavbarItem.donation_cam);
                    } else if (index == 2) {
                      BlocProvider.of<NavigationBloc>(context)
                          .getNavBarItem(NavbarItem.speed_donation);
                    } else if (index == 3) {
                      BlocProvider.of<NavigationBloc>(context)
                          .getNavBarItem(NavbarItem.volunteer_cam);
                    } else if (index == 4) {
                      BlocProvider.of<NavigationBloc>(context)
                          .getNavBarItem(NavbarItem.profile);
                    }
                  },
                ),
              ));
        },
      ),
      body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return const HomeScreen();
        } else if (state.navbarItem == NavbarItem.donation_cam) {
          return DonationCampiganScreen();
        } else if (state.navbarItem == NavbarItem.volunteer_cam) {
          return VolunterCampignScreen();
        } else if (state.navbarItem == NavbarItem.profile) {
          return const ProfileScreen();
        }
        return Container();
      }),
    );
  }
}
