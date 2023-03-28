import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "LongList Widget",
      home: Scaffold(
        appBar: AppBar(title: Text("LongList"),),
        body: getListView(),
      ),
    )
  );
}

List<String> getDataItems(){
  var listItem = List<String>.generate(100, (counter) => "Data is $counter");
  return listItem;
}

Widget getListView(){
  var listItem = getDataItems();
  var listview = ListView.builder(itemBuilder: (context, index){
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItem[index]),
      onTap: (){
        debugPrint('${listItem[index]} was clicked');
      },
    );
  });
  return listview;
}