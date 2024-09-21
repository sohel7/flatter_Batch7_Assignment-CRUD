import 'package:crud_app/models/product.dart';
import 'package:crud_app/screens/add_new_product_screen.dart';
import 'package:crud_app/screens/update_product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.product, required this.onPressedDelete,
  });

  final Product product;
  final Function(String) onPressedDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),

          ),
          tileColor: Colors.white,
          title:  Text(product.productName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Product Code: ${product.productCode}'),
              Text('Product price: \$${product.unitPrice}'),
              Text('Product qty: ${product.qty}'),
              Text('Product Total Price:  \$${product.totalPrice}'),
              const Divider(),
              ButtonBar(
                children: [
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return  AddNewProductScreen(product: product);
                        },),);
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit')),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      onPressedDelete(product.id);
                    },
                    icon: const Icon(Icons.delete,color: Colors.red,),
                    label: const Text(
                      'Delete',
                      style: TextStyle(
                          color: Colors.red
                      ),
                    ),

                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}