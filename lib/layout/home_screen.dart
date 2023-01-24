import 'package:flutter/material.dart';
import 'package:journalist_app/models/SourcesResponse.dart';
import 'package:journalist_app/screens/Setting%20screen.dart';
import 'package:journalist_app/screens/home.dart';
import 'package:journalist_app/shared/network/remote/api_manager.dart';

import '../models/category.dart';
import '../screens/Search_Screen.dart';

import '../screens/categories.dart';
import '../screens/drawer_widget.dart';
import '../screens/ss.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/images/pattern.png',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            selectedCategory != null
                ? IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Search.routeName);
                    },
                    icon: Icon(Icons.search))
                : SizedBox()
          ],
          elevation: 0.0,
          title: const Text('News'),
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
        ),
        backgroundColor: Colors.transparent,
        body: selectedCategory == null
            ? CategoriesScreen(selectedCategoryItem)
            : HomeScreen(selectedCategory!),
        drawer: DrawerWidget(onDrawerClicked),
      ),
    );
  }

  Category? selectedCategory = null;

  void onDrawerClicked(number) {
    if (number == DrawerWidget.CATEGORY) {
      selectedCategory = null;
      setState(() {
        Navigator.pop(context);
      });
    } else if (number == DrawerWidget.SETTINGS) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Setting()));
    }
  }

  void selectedCategoryItem(category) {
    selectedCategory = category;
    setState(() {});
  }
}
