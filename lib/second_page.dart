import 'package:amazonclone/appbar.dart';
import 'package:amazonclone/data.dart';
import 'package:amazonclone/search_bar.dart';
import 'package:amazonclone/second_data.dart';
import 'package:amazonclone/single_product.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: appBar(isIcon: false,product: true),
              body: Stack(
                
                children: [

                  Stack(
                    children: [
                      SearchBar(isIcon: false,),
                                // const Text('All'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Container(
                         color: Colors.white,
                         child: StaggeredGridView.countBuilder(
                                 staggeredTileBuilder: (index) =>
                                     const StaggeredTile.fit(1), //cross axis cell count
                                     scrollDirection: Axis.vertical,
                                  
                                 mainAxisSpacing: 5, // vertical spacing between items
                                 crossAxisSpacing: 5, // horizontal spacing between items
                                 crossAxisCount: 2, // no. of virtual columns in grid
                                 itemCount: recommndedImgList.length,
                                 
                                 itemBuilder: (context, index) {
                                    RecommondedModel3 data=recommndedImgList3[index];
                                    return SingleProduct2(image: data.image, name: data.name, category: data.category, price: data.price);
                                   },
                               ),
                       ),
                  ),
                ],
              ),
            );/* 
            ],
          ),
        ),
      ),
      
    );
  */ }
}