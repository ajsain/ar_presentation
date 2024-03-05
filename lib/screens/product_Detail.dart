import 'package:ardemo/screens/home_Screen.dart';
import 'package:ardemo/utills/size_boxs.dart';
import 'package:ardemo/utills/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utills/color_resources.dart';
import 'ar_core_screen.dart';
import 'ar_screen.dart';

class ProductDetail extends StatefulWidget {
  ProductModel foodModel;
  ProductDetail(this.foodModel, {super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl:
                widget.foodModel.image.toString(),
                imageBuilder:
                    (context, imageProvider) =>
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height:220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                placeholder: (context, url) =>
                    Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color:  Colors.grey,
                            borderRadius: BorderRadius.circular(35)
                        )
                    ),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(horizontal:3.0,vertical:0),
                decoration: BoxDecoration(
                  color: colorGray1.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child:IconButton(
                  onPressed: (){
                    Navigator.pop(context,true);
                  },
                  icon: const Icon(
                    Icons.keyboard_backspace_rounded,
                    color:colorPrimary,
                  ),
                ),
              ),
            ],
          ),
          hSizedBox1,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foodModel.name.toString(),
                  style: FontStyleUtilities.f18(
                      fontColor: Colors.black, fontWeight: FWT.bold),
                ),
                hSizedBox1,
                Text(
                  "Lorem ipsum, placeholder or dummy text used in typesetting and graphic design for previewing layouts. It features scrambled Latin text, which emphasizes the design over content of the layout. It is the standard placeholder text of the printing and publishing industries.",
                  textAlign: TextAlign.start,
                  style: FontStyleUtilities.f13(
                      fontColor: Colors.grey,
                      fontWeight: FWT.regular),
                ),
                hSizedBox1,
                Row(
                  children: [
                    Text(
                      "\u{20B9} ${widget.foodModel.price.toString()}",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    wSizedBox1,
                    Text(
                      "\u{20B9} ${widget.foodModel.price.toString()}",
                      style: TextStyle(
                          color:colorPrimary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                hSizedBox1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      decoration:
                      BoxDecoration(
                        shape: BoxShape
                            .rectangle,
                        color: Colors
                            .green.shade600,
                        boxShadow: [
                          BoxShadow(
                            color: Colors
                                .green
                                .shade600,
                            blurRadius: 1.0,
                          ),
                        ],
                        border: Border.all(
                            color: Colors
                                .green
                                .shade600,
                            width: 1),
                        borderRadius:
                        BorderRadius
                            .circular(
                            8.0),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    qty--;
                                  });

                                },
                                child:
                                const Icon(
                                  CupertinoIcons
                                      .minus,
                                  color: Colors
                                      .white,
                                  size: 16,
                                ),
                              ),
                            ),
                            Text(
                                qty.toString(),
                              style: FontStyleUtilities.f15(
                                  fontColor:
                                  Colors.white,
                                  fontWeight: FWT.bold),
                              textAlign:
                              TextAlign.center,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    qty++;
                                  });

                                },
                                child:
                                const Icon(
                                  CupertinoIcons
                                      .add,
                                  color: Colors
                                      .white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ArCoreScreen(),
                        ));
                      },
                      child: const Text('AR VIEW'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
