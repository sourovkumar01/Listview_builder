import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp( home: HomeScreen(),);
  }


}
class HomeScreen extends StatelessWidget{
  final List<Map<String, dynamic>> MyItems = [
    {
      "img":
      "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Dell Inspiron 15",
      "subtitel":"this tis computer"

    },
    {
      "img":
      "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "HP Pavilion x360",
      "subtitel":"this tis computer"

    },
    {
      "img":
      "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Lenovo ThinkPad X1 Carbon",
      "subtitel":"this tis computer"

    },
    {
      "img":
      "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Asus ROG Strix G15",
      "subtitel":"this tis computer"

    },
    {
      "img":
      "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Apple MacBook Pro 13",
      "subtitel":"this tis computer"

    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: Text('List view'),

      ),
      body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return Card (
              child: ListTile(
                leading: Image.network (MyItems[index]['img'],fit:BoxFit.fill,),


                title: Text(MyItems[index]['title']),

                subtitle: Text(MyItems[index]['subtitel'],),
                trailing: Icon(Icons.add),


              ),
            );

          }),
    );
  }



}
