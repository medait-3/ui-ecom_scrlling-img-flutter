import 'package:flutter/material.dart';
import 'package:uiecom/data/data.dart';

import '../product-detal.dart';


class ProductTile extends StatefulWidget {
  final int index;
  // final String assetPath;
  const ProductTile({required this.index, Key? key}) : super(key: key);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  
  @override
  Widget build(BuildContext context) {
    return 
    
    
    Column(children: [       Column(    crossAxisAlignment: CrossAxisAlignment.stretch, 
      
                               children: [
                                 Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8,),
                                   child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) => ProductDetails(index: widget.index),
                                        ),
                                      );
                                    },
                                     child: Stack(
                                       children: [
                                          Card(surfaceTintColor:  Colors.transparent,color: Color.fromARGB(255, 237, 236, 236),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 1,right: 44,top: 11),
                                            child: Container(child: Image.asset(product[widget.index]["image"],fit: BoxFit.contain,),),
                                          )), Positioned(top: 11 ,left: 115,
                                            child: CircleAvatar(radius: 16,
                                                     backgroundColor: Colors.white,
                                             child: IconButton(
                                                        icon: const Icon(Icons.favorite_border),
                                                        iconSize: 16,
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                          ), Positioned(bottom: -5,left: 9,
                                            child:  Container(color: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(product[widget.index]["name"],style: TextStyle(color: Color.fromARGB(255, 46, 45, 45)
                                                ,fontWeight:FontWeight.bold,fontSize: 14),textAlign: TextAlign.start,),
                                              ),
                                            ),
                                          ), Positioned(top: 1,left: 9,
                                            child:          ClipRRect(    borderRadius: BorderRadius.circular(20),

                                              child: Container(color: Colors.redAccent,
                                                child: Padding(
                                                                          padding: const EdgeInsets.symmetric(horizontal:19),
                                                                          child: Text('\$${product[widget.index]["prix"]}',style: TextStyle(color: Colors.black
                                                                          ,fontWeight:FontWeight.bold,fontSize: 15),textAlign: TextAlign.start,),
                                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                     ),
                                   ),
                                 ),

                            
                               ],
                             ),],);
    
    
    
    
    
    
    
    
    
    
    
    
    
    //  GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute<void>(
    //         builder: (BuildContext context) => ProductDetails(index: index),
    //       ),
    //     );
    //   },
    //   child: Container(
    //     height: 180,
    //     padding: const EdgeInsets.only(left: 20),
    //     child: Row(
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.circular(25),
    //           child: Container(
    //             width: 111,
    //             height: 150,
    //             color: Colors.white,
    //             child: Image.asset(
    //               'assets/glasses/glasses${index + 1}.png',
    //               fit: BoxFit.contain,
    //             ),
    //           ),
    //         ),
    //         const SizedBox(width: 20),
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             const Text(
    //               'Cat-eye Sunglasses',
    //               style: TextStyle(
    //                 fontSize: 22,
    //                 inherit: false,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             const SizedBox(height: 5),
    //             Text(
    //               'Brown,',
    //               style: TextStyle(
    //                 fontSize: 18,
    //                 inherit: false,
    //                 color: Colors.white.withOpacity(0.8),
    //               ),
    //             ),
    //             const SizedBox(height: 16),
    //             const Text(
    //               '\$ 99',
    //               style: TextStyle(
    //                 fontSize: 20,
    //                 inherit: false,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
