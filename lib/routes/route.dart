import 'package:get/get.dart';
import 'package:getx_tutorial/pages/homepage.dart';
import 'package:getx_tutorial/pages/page_1.dart';
import 'package:getx_tutorial/pages/page_2.dart';
import 'package:getx_tutorial/pages/page_3.dart';
import 'package:getx_tutorial/pages/page_4.dart';
import 'package:getx_tutorial/pages/product/detail.dart';
import 'package:getx_tutorial/pages/product/index.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

class AppRoutePage {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => PageSatu(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => PageDua(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => PageTiga(),
    ),
    GetPage(
      name: RouteName.page_4,
      page: () => PageEmpat(),
    ),
    // HOME
    GetPage(
      name: RouteName.home,
      page: () => HomePages(),
    ),
    // PRODUCT
    GetPage(
      name: RouteName.product,
      page: () => Product(),
    ),
    GetPage(
      name: RouteName.product + '/:id?',
      page: () => DetailProduct(),
    ),
  ];
}
