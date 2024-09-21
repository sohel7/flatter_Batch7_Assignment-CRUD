import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
final TextEditingController _productNameTEController = TextEditingController();
final TextEditingController _productCodeTEController = TextEditingController();
final TextEditingController _productQuantityTEController = TextEditingController();
final TextEditingController _productPriceTEController = TextEditingController();
final TextEditingController _productTotalPriceTEController = TextEditingController();
final TextEditingController _productImageTEController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Update Product'),),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _productNameTEController,
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'Product Name'
              ),
            ),
            TextFormField(
              controller: _productCodeTEController,
              decoration: const InputDecoration(
                  hintText: 'Code',
                  labelText: 'Product Code'
              ),
            ),
            TextFormField(
              controller: _productQuantityTEController,
              decoration: const InputDecoration(
                  hintText: 'Quantity',
                  labelText: 'Product Quantity'
              ),
            ),
            TextFormField(
              controller: _productPriceTEController,
              decoration: const InputDecoration(
                  hintText: 'Unit Price',
                  labelText: 'Product Price'
              ),
            ),
            TextFormField(
              controller: _productTotalPriceTEController,
              decoration: const InputDecoration(
                  hintText: 'Total',
                  labelText: ' Total Price'
              ),
            ),
            TextFormField(
              controller: _productImageTEController,
              decoration: const InputDecoration(
                  hintText: 'Image',
                  labelText: 'Product Image'
              ),
            ),
             const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite),
               // backgroundColor: Colors.green
              ),
                onPressed:_onTapAddProductButton,
                child: const Text('Update Product'),
            )
          ],
        ),
      );
  }

  void _onTapAddProductButton(){

  }


  @override
  void dispose() {
   _productNameTEController;
   _productCodeTEController;
   _productQuantityTEController;
   _productPriceTEController;
   _productTotalPriceTEController;
   _productImageTEController;
    super.dispose();
  }
}
