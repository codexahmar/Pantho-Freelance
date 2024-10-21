import 'package:get/get.dart';
import 'package:pantho/views/all_donor.dart';
import 'package:pantho/views/become_donor.dart';
import 'package:pantho/views/bottom_bar.dart';
import 'package:pantho/views/donation.dart';
import 'package:pantho/views/drawer.dart';
import 'package:pantho/views/give_blood.dart';
import 'package:pantho/views/home_screen.dart';
import 'package:pantho/views/nearby_donor.dart';
import 'package:pantho/views/notifications_screen.dart';
import 'package:pantho/views/profile_screen.dart';
import 'package:pantho/views/login2_view.dart';
import 'package:pantho/views/login_view.dart';
import 'package:pantho/views/onboarding_view.dart';
import 'package:pantho/views/select_blood_group.dart';
import 'package:pantho/views/settings_screen.dart';
import 'package:pantho/views/verfication.dart';

import '../views/splash_view.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const login2 = '/login2';
  static const verificationScreen = '/verificationScreen';
// Bottom Bar Routes
  static const bottomBar = '/bottomBar';
  static const home = '/home';
  static const profile = '/profile';
  static const settings = '/settings';
  static const notifications = '/notifications';
// Other Routes
  static const selectBlood = '/select-blood';
  static const nearbyDonor = '/nearby-donor';
  static const allDonor = '/all-donor';
  static const becomeDonor = '/become-donor';
  static const donation = '/donation';
  static const giveBlood = '/give-blood';
  static const drawer = '/drawer';
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
    ),
    GetPage(
      name: AppRoutes.login2,
      page: () => const Login2View(),
    ),
    GetPage(
      name: AppRoutes.selectBlood,
      page: () => const SelectBloodGroup(),
    ),
    GetPage(
      name: AppRoutes.becomeDonor,
      page: () => const BecomeDonor(),
    ),
    GetPage(
      name: AppRoutes.giveBlood,
      page: () => const GiveBlood(),
    ),
    GetPage(
      name: AppRoutes.donation,
      page: () => const Donation(),
    ),
    GetPage(
      name: AppRoutes.allDonor,
      page: () => const AllDonor(),
    ),
    GetPage(
      name: AppRoutes.nearbyDonor,
      page: () => const NearbyDonor(),
    ),
    GetPage(
      name: AppRoutes.notifications,
      page: () => const NotificationsScreen(),
    ),
    GetPage(
      name: AppRoutes.drawer,
      page: () => const DrawerScreen(),
    ),
    GetPage(
        name: AppRoutes.verificationScreen, page: () => const Verfication()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.profile, page: () => const ProfileScreen()),
    GetPage(name: AppRoutes.settings, page: () => const SettingsScreen()),
    GetPage(
        name: AppRoutes.notifications, page: () => const NotificationsScreen()),
    GetPage(name: AppRoutes.bottomBar, page: () => const BottomBar()),
  ];
}
