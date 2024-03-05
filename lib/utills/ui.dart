
import 'package:ardemo/utills/styles.dart';
import 'package:flutter/material.dart';

import 'color_resources.dart';



class Ui {

  static AppBar mainBar(
      {
        BuildContext? context,
        GlobalKey<ScaffoldState>? scaffoldKey
      }) {
    return AppBar(
      backgroundColor: colorWhite,
      automaticallyImplyLeading: true,
      elevation: 0,
      centerTitle: false,
      title: Text(
          "AR Demo",
          style: FontStyleUtilities.f20(
              fontColor: colorBlack, fontWeight: FWT.semiBold)
      ),
      actions: [
        Stack(
          children: [
            IconButton(
                onPressed: () {

                },
                icon:const Icon(Icons.notifications_none_rounded,color: colorBlack)
            ),
            Positioned(
                right:8,
                top:8,
                child:CircleAvatar(
                  maxRadius:8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "0",
                    style:FontStyleUtilities.f11(
                        fontColor: colorWhite, fontWeight: FWT.semiBold),
                  ),
                )
            )
          ],
        ),
        Stack(
          children: [
            IconButton(
                onPressed: () {

                },
                icon:const Icon(Icons.shopping_cart_outlined,color: colorBlack)
            ),
            Positioned(
                right:8,
                top:8,
                child:CircleAvatar(
                  maxRadius:8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "0",
                    style:FontStyleUtilities.f11(
                        fontColor: colorWhite, fontWeight: FWT.semiBold),
                  ),
                )
            )
          ],
        ),

      ],
    );
  }

  static AppBar detailBar(
      {String? title,
        BuildContext? context,
        bool? backIcon=true
      }) {
    return AppBar(
      backgroundColor:colorPrimary,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title.toString(),
        style: FontStyleUtilities.f20(
            fontColor: colorWhite, fontWeight: FWT.bold),
      ),
      leading: Visibility(
        visible: backIcon!,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical:4),
          child: InkWell(
              onTap: () {
                Navigator.pop(context!, false);
              },
              child: const Icon(
                Icons.keyboard_backspace_rounded,
                color: colorWhite,
              )),
        ),
      ),
    );
  }



}
