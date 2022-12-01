void main() {
  var obj = Product('Shoes', 1200, 800, 4.5);
  obj.display_product_details();
  var obj1 = Product.addition('Laptop cover');
  print(obj1.name);
  print(obj1.price);
  var obj2 = ElectronicProduct('Redmi 9 prime', 15000, 12000, 4.5, 12);
  obj2.display_product_details();
}

class Product {
  var name, price, deal_price, rating;
  Product(this.name, this.price, this.deal_price, this.rating);
  display_product_details() {
    print('Name:$name');
    print('Price:$price');
    print('deal_price:$deal_price');
    print('you_save:${price - deal_price}');
    print('Rating:$rating');
  }

  Product.addition(this.name) {
    price = 12000;
  }
}

class ElectronicProduct extends Product {
  var warrenty;
  ElectronicProduct(
      super.name, super.price, super.deal_price, super.rating, this.warrenty);
  @override
  display_product_details() {
    super.display_product_details();
    print('Warrenty_in_months:$warrenty');
  }
}
