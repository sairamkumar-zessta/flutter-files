void main() {
  var obj1 = Product("Shoes", 1500, 1000, 4);
  obj1.display_details();
  var obj2 = ElectronicProduct("POCO M4", 15000, 11000, 4.5);
  obj2.display_details();
  obj2.add_display_warrenty(24);
  var obj3 = Laptop("Asus 115", 70000, 45000, 4.8);
  obj3.display_details();
  obj3.add_ram_memory('32GB', '1TB');
  obj3.add_display_warrenty(12);
}

class Product {
  var name;
  var sell_price;
  var deal_price;
  var rating;
  Product(this.name, this.sell_price, this.deal_price, this.rating);
  display_details() {
    print("name : $name");
    print("sell_price: $sell_price");
    print("deal_price : $deal_price");
    print("you_save : ${sell_price - deal_price}");
    print("rating : $rating");
  }
}

class ElectronicProduct extends Product {
  ElectronicProduct(
      super.name, super.sell_price, super.deal_price, super.rating);
  var warrenty;
  add_display_warrenty(war) {
    warrenty = war;
    print("warrenty_in_months:${warrenty}");
  }
}

class Laptop extends ElectronicProduct {
  Laptop(super.name, super.sell_price, super.deal_price, super.rating);
  var ram;
  var memory;
  add_ram_memory(r, m) {
    ram = r;
    memory = m;
    print("Ram:$r");
    print("memory:$m");
  }
}
