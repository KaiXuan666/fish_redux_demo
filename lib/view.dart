import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';

//state 数据驱动页面刷新，dispatch 用于发送事件，viewService 提供视图服务
Widget buildView(MainPageState state, dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.add,
          size: 18,
          color: Colors.black,
        ),
        onPressed: () {
          //发送事件
          dispatch(MainActionCreator.testEffectAction());
        },
      ),
    ),
    body: Center(
      child: Text(state.account.toString()),
    ),
  );
}