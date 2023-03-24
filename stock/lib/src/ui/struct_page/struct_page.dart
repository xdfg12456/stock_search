import 'package:flutter/material.dart';
import 'package:stock/src/ui/home_page/widget/stock_code_search_box.dart';
import 'package:stock/src/ui/struct_page/widget/tool_button.dart';

class StructPage extends StatefulWidget {
  const StructPage({Key? key, required this.dataWidget}) : super(key: key);

  final Widget dataWidget;

  @override
  State<StructPage> createState() => _StructPageState();
}

class _StructPageState extends State<StructPage> {
  ScrollController _controller = ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: Text(
            "Stock",
            style: TextStyle(decoration: TextDecoration.none),
          ),
        ),
        actions: [
          StockSearchBox(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Stock",
                  style: TextStyle(decoration: TextDecoration.none, fontSize: 30),
                ),
              ),
            ),
            ToolButton(
              icon: Icons.home,
              text: "Home",
            ),
            ToolButton(
              icon: Icons.person,
              text: "Personal",
            ),
            ToolButton(
              icon: Icons.analytics,
              text: "Stock",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Center(
          child: widget.dataWidget,
        ),
      ),
    );
  }
}
