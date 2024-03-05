import 'package:ardemo/utills/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utills/color_resources.dart';
import '../utills/size_boxs.dart';
import 'product_Detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> category = [];
  List<ProductModel> products = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    category.add(CategoryModel("Bed", "https://mysleepyhead.com/media/catalog/product/q/u/queen_size_wooden_bed_1.jpg"));
    category.add(CategoryModel("Sofa", "https://www.shutterstock.com/image-photo/modern-sofa-260nw-426909265.jpg"));
    category.add(CategoryModel("Chair", "https://www.shutterstock.com/shutterstock/photos/1165935439/display_1500/stock-vector-vector-illustration-of-chair-on-white-background-1165935439.jpg"));
    category.add(CategoryModel("Dine Table", "https://m.media-amazon.com/images/I/61nKGKkNHeL.jpg"));

    products.add(ProductModel("Round Bed", "https://images.ctfassets.net/q5lwz1whkyct/oF4LEyqUyfZgXBihIBPvG/1d642157e4fba0c03d0f1899c0c1605a/47-distressed-bed.jpg","25000"));
    products.add(ProductModel("B u n k beds", "https://www.bhg.com/thmb/QcmpKRH3FeofmuSgijsDGLCHOlo=/2668x0/filters:no_upscale():strip_icc()/BHGJune2022_009-1_preview-8ebc05e32fbd4d558c620d771ea38d26.jpg","40000"));
    products.add(ProductModel("Upholstered Bed", "https://www.bhg.com/thmb/cpPqwsex7qB5V0Cw_fTcUamQ3wI=/2667x0/filters:no_upscale():strip_icc()/102770277_preview-671dab0c9df54116b887a98369686cb8.jpg","150000"));
    products.add(ProductModel("Storage beds", "https://t2.gstatic.com/images?q=tbn:ANd9GcSjF7iks9GincMs7EmwgVQQEICWtpDvzwofkItjg9qodpfcFVbc","85000"));
    products.add(ProductModel("Ottoman Bed", "https://t2.gstatic.com/images?q=tbn:ANd9GcSEUuA5g5nkOODHwNuaInf-9llqzLRSqrGRNW0ut-2aREOJY8_O","75000"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categries",
                style: FontStyleUtilities.f20(
                    fontColor: colorPrimary, fontWeight: FWT.semiBold),
              ),
            ),
            hSizedBox,
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 3),
              height: 110,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index1) {
                    CategoryModel categoryModel = category[index1];
                    return InkWell(
                      onTap: () {

                      },
                      child: SizedBox(
                        width: 90,
                        height: 70,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.grey.shade100,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        categoryModel.image
                                            .toString(),
                                    imageBuilder:
                                        (context, imageProvider) =>
                                        Container(
                                          height: 32,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                            ),
                                          ),
                                        ),
                                    placeholder: (context, url) =>
                                        Container(
                                          height: 188,
                                            decoration: BoxDecoration(
                                                color:  Colors.grey,
                                                borderRadius: BorderRadius.circular(35)
                                            )
                                        ),
                                    errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                  )),
                            ),
                            hSizedBox1,
                            Text(
                              categoryModel.name.toString(),
                              textAlign: TextAlign.center,
                              style: FontStyleUtilities.f12(
                                  fontColor: Colors.grey,
                                  fontWeight: FWT.regular),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "Products",
                  style: FontStyleUtilities.f20(
                      fontColor: colorPrimary, fontWeight: FWT.semiBold),
              ),
            ),
            hSizedBox,
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index1) {
                    ProductModel foodModel = products[index1];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProductDetail(foodModel),
                        ));
                      },
                      child: Card(
                        color: colorWhite,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl:foodModel.image.toString(),
                              imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),
                              placeholder: (context, url) => Container(
                                decoration: BoxDecoration(
                                    color:  Colors.grey,
                                    borderRadius: BorderRadius.circular(0)
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                            Positioned(
                                bottom: 0,
                                child: Container(
                                  height: 70,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.black38,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          foodModel.name.toString(),
                                          style: FontStyleUtilities.f12(
                                              fontColor: Colors.white, fontWeight: FWT.bold),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\u{20B9} ${foodModel.price.toString()}",
                                              style: const TextStyle(
                                                  decoration: TextDecoration.lineThrough,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            wSizedBox1,
                                            Text(
                                              "\u{20B9} ${foodModel.price.toString()}",
                                              style: TextStyle(
                                                  color: Colors.yellow.shade500,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryModel {
  String? name, image;
  CategoryModel(this.name, this.image);
}

class ProductModel {
  String? name, image,price;
  ProductModel(this.name, this.image,this.price);
}
