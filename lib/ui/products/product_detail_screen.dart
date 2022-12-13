import 'package:flutter/material.dart';
import 'package:shopgiaycantho/ui/screens.dart';
import 'package:provider/provider.dart';

import '../../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  const ProductDetailScreen(this.product, {super.key});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '\$${product.price}',
            style: const TextStyle(
                color: Color.fromARGB(190, 72, 130, 255), fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                onPressed: () {
                  final cart = context.read<CartManager>();
                  cart.addItem(product);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Thêm vào giỏ hàng',
                        ),
                        duration: const Duration(seconds: 2),
                        action: SnackBarAction(
                          label: 'Hủy',
                          onPressed: () {
                            cart.removeSingleItem(product.id!);
                          },
                        ),
                      ),
                    );
                },
                child: const Text("Thêm vào giỏ hàng",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Text(
              product.description,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ],
      )),
    );
  }
}

onAddToCartLicked() {}
//CK21V7K035