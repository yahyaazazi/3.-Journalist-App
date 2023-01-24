import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journalist_app/shared/network/remote/api_manager.dart';
import '../models/SourcesResponse.dart';
import 'package:journalist_app/models/SourcesResponse.dart';

class Setting extends StatelessWidget {
  static const String routeName = 'setting';

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
        appBar: AppBar(title: Text('Setting')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Language',
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ),
            Container(
              width: double.infinity,
              height: 50,
              //padding: EdgeInsets.symmetric(horizontal:100),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              child: DropdownButton<String>(
                items: <String>[
                  'En',
                  'ar',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    enabled: true,
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                onChanged: (value) {},
                hint: Text('En'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// DropdownButton<String>(
// items: <String>['A', 'B', 'C', 'D'].map((String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
// onChanged: (_) {},
// )
