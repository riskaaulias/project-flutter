import 'package:flutter/material.dart';
import 'package:projectflutter/container/ContainerSatu.dart';
import 'package:projectflutter/list_grid_view/ArticleListScreen.dart';
import 'package:projectflutter/list_grid_view/GridProductPage.dart';
import 'package:projectflutter/pages/about_page.dart';
import 'package:projectflutter/pages/home_page.dart';
import 'package:projectflutter/row_column/ColumnWidget.dart';
import 'package:projectflutter/row_column/LatihanColumnWidget1.dart';
import 'package:projectflutter/row_column/RowColumnWidget.dart';
import 'package:projectflutter/row_column/RowWidget.dart';
import 'package:projectflutter/sized_expanded_stack/ExpandedWidget.dart';
import 'package:projectflutter/sized_expanded_stack/LatihanEmpat.dart';
import 'package:projectflutter/sized_expanded_stack/LatihanTiga.dart';
import 'package:projectflutter/sized_expanded_stack/LayoutDua.dart';
import 'package:projectflutter/sized_expanded_stack/LayoutEmpat.dart';
import 'package:projectflutter/sized_expanded_stack/LayoutSatu.dart';
import 'package:projectflutter/sized_expanded_stack/LayoutTiga.dart';
import 'package:projectflutter/sized_expanded_stack/SizedBoxWidget.dart';
import 'package:projectflutter/sized_expanded_stack/StackWidget.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';
  static const containerSatu = '/container-satu';
  static const articleList = '/article-list-screen';
  static const gridProduct = '/grid-product-page';
  static const columnWidget = '/column-widget';
  static const latihanColumn = '/latihan-column-widget1';
  static const rowColumn = '/row-column-widget';
  static const rowWidget = '/row-widget';
  static const expandedWidget = '/expanded-widget';
  static const latihanTiga = '/latihan-tiga';
  static const latihanEmpat = '/latihan-empat';
  static const layoutSatu = '/layout-satu';
  static const layoutDua = '/layout-dua';
  static const layoutTiga = '/layout-tiga';
  static const layoutEmpat = '/layout-empat';
  static const sizedBox = '/sized-box-widget';
  static const stackWidget = '/stack-widget';
  static const navigator = '/navigator';


  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    about: (context) => AboutPage(),
    containerSatu: (context) => ContainerSatu(),
    articleList: (context) => ArticleListScreen(),
    gridProduct: (context) => GridProductPage(),
    columnWidget: (context) => ColumnWidget(),
    latihanColumn: (context) => LatihanColumnWidget1(),
    rowColumn: (context) => RowColumnWidget(),
    rowWidget: (context) => RowWidget(),
    expandedWidget: (context) => ExpandedWidget(),
    latihanTiga: (context) => LatihanTiga(),
    latihanEmpat: (context) => LatihanEmpat(),
    layoutSatu: (context) => LayoutSatu(),
    layoutDua: (context) => LayoutDua(),
    layoutTiga: (context) => LayoutTiga(),
    sizedBox: (context) => SizedBoxWidget(),
    stackWidget: (context) => Stackwidget(),
    navigator: (context) => Navigator(),
  };
}