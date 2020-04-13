import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  _indexPageState createState() => _indexPageState();
}

class _indexPageState extends State<IndexPage> {
  // 定义底部导航数组
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员')
    ),
  ];

  // 定义页面数组
  final List pageBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  // 索引
  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = pageBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
       bottomNavigationBar: BottomNavigationBar(
         type:BottomNavigationBarType.fixed,
         currentIndex: currentIndex,
         items: bottomTabs,
         onTap: (index){
           setState(() {
             currentIndex = index;
             currentPage = pageBodies[index];
           });
         },
       ),
       body: currentPage,
    );
  }
}
// class IndexPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text('电商项目实战')),
//       body: Center(
//         child:Text('电商项目实战'),
//       ),
//     );
//   }
// }