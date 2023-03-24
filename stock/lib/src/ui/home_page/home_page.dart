import 'package:flutter/material.dart';
import 'package:stock/src/ui/home_page/widget/daily_stock.dart';
import 'package:stock/src/ui/home_page/widget/muti_stock.dart';
import 'package:stock/src/ui/home_page/widget/stock_code_search_box.dart';
import 'package:stock/src/ui/home_page/widget/three_legal_person.dart';
import 'package:stock/src/ui/struct_page/struct_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StructPage(
      dataWidget: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: DailyStock(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              child: MutiStock(),
              height: 400,
              width: 700,
            ),
          ),
          Text(
            "三大法人",
            style: TextStyle(decoration: TextDecoration.none, fontSize: 40),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              child: ThreeLegalPerson(),
              height: 400,
              width: 700,
            ),
          ),
        ],
      ),
    );
  }
}
