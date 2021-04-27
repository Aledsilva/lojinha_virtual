import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lojinha_virtual/datas/product_data.dart';

class CartProduct{

  String cartid;
  String category;
  String productid;

  int quantity;
  String productsize;

  ProductData productData;

  CartProduct();

  CartProduct.fromDocument(DocumentSnapshot document){
    cartid = document.documentID;
    category = document.data["category"];
    productid = document.data["productid"];
    quantity = document.data["quantity"];
    productsize = document.data["productsize"];
  }

  Map<String, dynamic>toMap(){
    return{
      "category": category,
      "productid": productid,
      "quantity": quantity,
      "productsize": productsize,
      //"product": productData.toResumedMap()
    };
  }

}