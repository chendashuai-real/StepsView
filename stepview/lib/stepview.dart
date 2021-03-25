import 'package:flutter/material.dart';


// 整个结构是 view(横线/圈/文字)
class StepCircle extends StatelessWidget {
  final String num; // 标签号/索引
  final Color numcolor; // 索引文字颜色
  final String text; //
  final double size; // 标签大小
  final Color bgcolor; // 背景颜色
  final double containerwidth;
  final double containerheight;
  StepCircle({
    Key key,
    this.num = '1',
    this.numcolor = Colors.black,
    this.text = '占位文字',
    this.size = 30,
    this.bgcolor = Colors.blue,
    this.containerwidth = 100,
    this.containerheight = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.containerheight, // 设置最底部框的高度
      width: this.containerwidth, // 设置最底部框的宽度
      child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Positioned(
              //top: 26, // 不设置, 就竖向方位居中了
              bottom: null , // 设置距离底部的距离
              left: this.num == '1' ? this.containerwidth*.5 : 0, // 设置距离左边的距离
              right: this.num == '4' ? this.containerwidth*.5 : 0, // 设置距离右边的距离
              height: 4, // 横条高度
              width: null, // 横条宽度
              child: Container(// 横线
                color: this.bgcolor,
              ),
            ),
            Container( // 圆圈
              width: this.size,
              height: this.size,
              padding: EdgeInsets.only(top:7.0, left: 10), //容器内补白
              decoration: BoxDecoration(
                color: this.bgcolor,
                borderRadius: BorderRadius.circular(size * 2.5),
              ),
              child: Text(
                this.num,
                style: TextStyle(color: this.numcolor),
              ),
            ),

            Positioned( // 定位组件
              bottom: 0, // 其他不设置就居中显示了
              child: Text( // 文字
                this.text,
              ),
            )

          ]
      ),
    );
  }
}

