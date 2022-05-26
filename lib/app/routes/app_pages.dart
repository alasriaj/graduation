import '../../app/modules/cart_module/cart_page.dart';
import '../../app/modules/cart_module/cart_bindings.dart';
import '../../app/modules/calculator_module/calculator_page.dart';
import '../../app/modules/calculator_module/calculator_bindings.dart';
import '../../app/modules/services_screen_module/services_screen_page.dart';
import '../../app/modules/services_screen_module/services_screen_bindings.dart';
import '../../app/modules/categories_screen_module/categories_screen_page.dart';
import '../../app/modules/categories_screen_module/categories_screen_bindings.dart';
import '../../app/modules/logo_screen_module/logo_screen_page.dart';
import '../../app/modules/logo_screen_module/logo_screen_bindings.dart';
import '../../app/modules/news_module/news_page.dart';
import '../../app/modules/news_module/news_bindings.dart';
import '../../app/modules/hombody_module/hombody_page.dart';
import '../../app/modules/hombody_module/hombody_bindings.dart';
import '../../app/modules/home_module/home_page.dart';
import '../../app/modules/home_module/home_bindings.dart';
import '../../app/modules/login_module/login_page.dart';
import '../../app/modules/login_module/login_bindings.dart';
import '../../app/modules/gassp_home_module/gassp_home_page.dart';
import '../../app/modules/gassp_home_module/gassp_home_bindings.dart';
import '../../app/modules/users_module/users_page.dart';
import '../../app/modules/users_module/users_bindings.dart';
import '../../app/modules/login_admin_module/login_admin_bindings.dart';
import '../../app/modules/login_admin_module/login_admin_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';
/**
 * GetX Generator - fb.com/htngu.99
 * */

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN_ADMIN,
      page: () => loginAdminPage(),
      binding: loginAdminBinding(),
    ),
    GetPage(
      name: Routes.USERS,
      page: () => usersPage(),
      binding: usersBinding(),
    ),
    GetPage(
      name: Routes.GASSP_HOME,
      page: () => GasspHomePage(),
      binding: GasspHomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => loginPage(),
      binding: loginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => homePage(),
      binding: homeBinding(),
    ),
    GetPage(
      name: Routes.HOMBODY,
      page: () => HombodyPage(),
      binding: HombodyBinding(),
    ),
    GetPage(
      name: Routes.NEWS,
      page: () => newsPage(),
      binding: newsBinding(),
    ),
    GetPage(
      name: Routes.LOGO_SCREEN,
      page: () => LogoScreenPage(),
      binding: LogoScreenBinding(),
    ),
    GetPage(
      name: Routes.CATEGORIES_SCREEN,
      page: () => CategoriesScreenPage(),
      binding: CategoriesScreenBinding(),
    ),
    GetPage(
      name: Routes.SERVICES_SCREEN,
      page: () => ServicesScreenPage(),
      binding: ServicesScreenBinding(),
    ),
    GetPage(
      name: Routes.CALCULATOR,
      page: () => calculatorPage(),
      binding: calculatorBinding(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => cartPage(),
      binding: cartBinding(),
    ),
  ];
}
