import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journalist_app/models/NewsDataModel.dart';
import 'package:journalist_app/screens/news_item.dart';
import 'package:journalist_app/shared/network/remote/api_manager.dart';


import '../models/SourcesResponse.dart';

class Search extends StatefulWidget {
  static const String routeName = 'search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String qurry = '';
  List<Articles> newList = [];

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
          title: TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue),

                ),

                iconColor: Colors.white,
                labelText: 'Search For',
                fillColor: Colors.white,
                icon: Icon(Icons.search)
            ),
          ),
          elevation: 0.0,
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
        ),
        body: ListView.builder(
          itemCount: search()?.length,
          itemBuilder: (context, index) {
            return NewsItem(search()?.elementAt(index));
          },
        ),
      ),
    );
  }

  List? search() {
    ApiManager.getNewsData(qurry: qurry).then(
          (newsRes) {
        newList = newsRes.articles ?? [];
      },
    ).catchError((erorr) {
      debugPrint('error$erorr');
    });
    return newList;
  }
}
