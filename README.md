
# vertical_picker
vertical_picker is flutter package that you can use it as item selector. users with this package be able to select item that is in vertical list like as column with scroll.  

## Getting started
First of all you need to import it like this:
```dart
import 'package:vertical_picker/vertical_picker.dart';
```
## Usage

You can use VerticalPicker as widget like as other widget. for example you can this widget as child as SizedBox or other widget. (I suggest use this as child of widget like SizedBox, Container,...)

```dart
SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: VerticalPicker(
          // give height for eacch item
          itemHeight: MediaQuery.of(context).size.height / 15,

          // create list of text for items
          items: List.generate(
              10,
              (index) => Center(
                    child: Text(index.toString()),
                  )),

          // empty void for item selected
          onSelectedChanged: (indexSelected) {},
        ),
      ),
```
# Optional Parameters

If you use VerticalPicker with default optional parameter you may have widget like this:
<p align="center">
  <img src=https://github.com/SajadRahimi1/vertical-picker/raw/main/screenshots/without_margin.png />
</p>

## leftMargin and rightMargin
you can use this two parameter to controll sized of border
```dart
// margin for border
leftMargin: 150,
rightMargin: 150,
```
this gives you vertical picker like this(color of border changed):
<p align="center">
  <img src=https://github.com/SajadRahimi1/vertical-picker/raw/main/screenshots/example.png />
</p>

## BorderColor
You can specific border color:
```dart
// give color to border
borderColor: Colors.red,
```
this gives you vertical picker like this:
<p align="center">
  <img src=https://github.com/SajadRahimi1/vertical-picker/raw/main/screenshots/example.png />
</p>

## loop
You can loop the vertical picker by set loop to true:
```dart
loop = true;
```

If you set loop to true you see vertical picker like this:
<p align="center">
  <img src=https://github.com/SajadRahimi1/vertical-picker/raw/main/screenshots/loop.png />
</p>

## Use other widget for items of vertical picker
There isn't limitation for use widget as items. you can use Text, Icon, Image and ...

```dart
// create list of text for items
items: List.generate( 10,(index) => Icon(Icons.flutter_dash)),
```
<p align="center">
  <img src=https://github.com/SajadRahimi1/vertical-picker/raw/main/screenshots/use_icon.png />
</p>

# Some important tips
🔴 You must set itemHeight parameter a little longer that your items to items be in the best alignment

🔴 If you use Text as item, it's better that use Text in child of Center to Text goes in center of selectable items in vertical picker
 


