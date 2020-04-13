import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/http_headers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List imageList = [
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3925395111,318884015&fm=26&gp=0.jpg",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2544896306,4170436978&fm=26&gp=0.jpg",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=831357195,4037060181&fm=26&gp=0.jpg"
    ];
    // getHttp('daxiong').then((val){
    //   print(val);
    //   print('88888888888888');
    // });
    return Scaffold(
      appBar: AppBar(title:Text('首页')),
      body: SwiperDiy(swiperList:imageList),
    );
  }

  // Future getHttp(String TypeText) async {
  //   try{
  //     print('哈哈哈哈');
  //     Response response;
  //     Dio dio = new Dio();
  //     dio.options.headers = httpHeaders;
  //     response = await dio.post("https://time.geekbang.org/serv/v3/product/infos");
  //     return response.data;
  //   }catch(e){
  //     print('啦啦啦啦');
  //     print(e);
  //     return e;
  //   }
  // }
}

class SwiperDiy extends StatelessWidget {
  final List swiperList;
  const SwiperDiy({this.swiperList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemCount:swiperList.length,
        itemBuilder:(BuildContext context, int index) {
          return Image.network("${swiperList[index]}", fit: BoxFit.fill);
        },
        pagination: SwiperPagination(),
        autoplay: true,
        control: SwiperControl(),
        scale: 0.9,
        viewportFraction: 0.8,
        onTap: (int index) {
          _SwiperClicked(index);
        },
      ),
    );
  }

  _SwiperClicked(int index) {
    print("点击了第 ${index} 张图片");
  }
}