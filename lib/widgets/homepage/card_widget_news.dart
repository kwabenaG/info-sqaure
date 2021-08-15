/// "context" is used as a parameter for major widgets defined

// widget for default page for the card news

import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer_menu_items/menu_items.dart';

//  import local folders

// drawers
Widget initDrawer(context) {
  return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader(
        padding: EdgeInsets.fromLTRB(30, 60, 30, 10),
        decoration: BoxDecoration(
          color: Colors.blue[700],
        ),
        child: Text('Info Dem',
            textAlign: TextAlign.left,
            style: GoogleFonts.lato(
              fontSize: 55.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ))),
    ListTile(
        minVerticalPadding: 20.0,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => mandateMethod(context)));
        },
        title: Text("About Us",
            style: GoogleFonts.lato(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ))),
    ListTile(
        onTap: () {},
        title: Text("Tools",
            style: GoogleFonts.lato(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ))),
    ListTile(
        onTap: () {},
        title: Text("Help",
            style: GoogleFonts.lato(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ))),
    Padding(padding: EdgeInsets.only(bottom: 400)),
    Divider(height: 1.0, color: Colors.black87),
    Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('v 1.0.0',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ))
          ]),
    ),
  ]));
} //end of drawer

//homepage news card
Widget containerListBuilderCardNews() {
  return Container(
      height: 150,
      width: 500,
      // color: Colors.amberAccent,
      // padding: EdgeInsets.all(10.0),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return cardNewsWidget();
          }));
}

// methods to homepage news card
Widget cardNewsWidget() {
  return Container(
      margin: EdgeInsets.all(3.0),
      padding: EdgeInsets.all(1.0),
      height: 300.0,
      width: 300.0,
      // color: Colors.orange,
      child: Card(
          elevation: 5.0,
          child: Column(children: [
            ListTile(
                leading: Icon(Icons.new_releases,
                    size: 30.0, color: Colors.blue[600]),
                title: Text('Knust builds new science complex ...',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
                subtitle: Text('yeah')),
            listTileActionsDetails()
          ])));
}

// for card news => subtls

Widget listTileActionsDetails() {
  return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    Icon(
      Icons.access_time,
      size: 13.0,
    ),
    Padding(padding: EdgeInsets.only(right: 3.0)),
    Text('6 hrs ago', style: TextStyle(fontSize: 12.0)),
    TextButton(
      child: Text('read more ...',
          style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.blue[600])),
      onPressed: () => {print('read more')},
    )
  ]);
}
