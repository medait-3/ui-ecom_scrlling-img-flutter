
import 'package:flutter/material.dart';

import '../data/data.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
   int selectedIndex = 0;
int count=0;
  @override
  void initState() {
    super.initState();
    setState(() {
      // selectedIndex = widget.product.img[index]?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                      child: Container(
                        color: Color.fromARGB(255, 231, 229, 229),
                        height: 450,
                          child: Image.asset(
                     widget.product.img[selectedIndex],
        
                      fit: BoxFit.fitWidth,
                    ),
                      ),
                    ),
                    
                    Align(        alignment: Alignment.bottomRight,
        
                      child: Padding(
                        padding: const EdgeInsets.only(top:100,right: 25),
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                          child: Container(
                                 decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                      ,
                                      spreadRadius: 121,
                                      blurRadius: 2,
                                      offset: Offset(12, 21),
                                    ),
                                  ],
                                ),
                              height: 245,
                              width: 60,
                              child: listImg(),
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                       IconButton(
                                    icon: new Icon(Icons.arrow_back, color: Colors.black,),iconSize: 18,
                                    onPressed: () => Navigator.of(context).pop(),
                                  ), 
                                                        CircleAvatar(radius: 15,
                                            backgroundColor: Colors.white,
                                                child: IconButton(
                                                icon: const Icon(Icons.favorite_border,color: Colors.black,),
                                                iconSize: 14,
                                                onPressed: () {},
                                              ),
                                            ),
                        ],
                      ),
                    ),
        
                  ],
                ),
              ),
                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.product.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    Text('MAD ${widget.product.prix}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.amber),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(        padding: const EdgeInsets.all(18.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                  child: Container(
                        color: Color.fromARGB(255, 231, 229, 229),child: Row(children: [
                    IconButton(onPressed: (() {
                      setState(() {
                        count++;
                      });
                    }), icon: Icon(Icons.add,size: 16,)),
                    Text("$count"),
                       IconButton(onPressed: (() {
                      setState(() {
                        count--;
                      });
                    }), icon: Icon(Icons.remove,size: 16)),
                             
                  ],),),
                ),        ElevatedButton(
      onPressed: () {},
      child: Text('Add To Card'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // <-- Radius
      ),
      ),)
        ],),
    ),
      ),
    );
  }

  listImg() {

 return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          ...List.generate(
          widget.product.img.length,
            (index) {
              
                return Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                            child: InkWell(
                                              onTap: () {
                                                
                                                setState(() => selectedIndex = index);
                                              },
                                              child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                                              child: Container( color: Color.fromARGB(255, 232, 229, 229),
                                                            height: 60,
                                                            child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                         widget.product.img[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    if (selectedIndex == index)
                                      Positioned(
                                      top: 0,
                                left: 0,
                                child: Icon(Icons.check_box,
                                  color: Colors.amber,
                                  size: 15,
                                        ),
                                      ),
                                  ],
                                ),
                                                            ),
                                                                            ),
                                            ),
                                          );
              
            },
          )
        ]),
      ),
    );

  }
}