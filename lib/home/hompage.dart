import 'package:flutter/material.dart';
import 'package:uiecom/data/data.dart';
import 'package:uiecom/home/widget/card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                  GridView.builder(
                               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, // number of items in each row
                                mainAxisSpacing: 1, // spacing between rows
                                crossAxisSpacing:10, // spacing between columns
                              ),

                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      return ProductTile(
                        index: index,
                        // assetPath: 'assets/glasses/glasses${index + 1}.png',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
