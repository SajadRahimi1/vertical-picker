import 'package:flutter/material.dart';
import 'package:vertical_picker/vertical_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vertical Picker"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: VerticalPicker(
          // give height for eacch item
          itemHeight: MediaQuery.of(context).size.height / 15,

          // margin for border
          leftMargin: 150,
          rightMargin: 150,

          // create list of text for items
          items: List.generate(
              10,
              (index) => Center(
                    child: Text(index.toString()),
                  )),

          // empty void for item selected
          onSelectedChanged: (indexSelected) {},

          // give color to border
          borderColor: Colors.red,

          // thickness of border
          borderThickness: 3,
        ),
      ),
    );
  }
}
