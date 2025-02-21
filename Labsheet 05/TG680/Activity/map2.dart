void main() {
  var product = {
    'id': "Product001",
    'Name': "Pencil",
    'price': 100.00
  };

  print(product);
 product['id']="product002";
 product['Name']="Pen";
 product['price']=25.0;

 product['category']="electronics";

print("category key added in to the map \n $product");
}