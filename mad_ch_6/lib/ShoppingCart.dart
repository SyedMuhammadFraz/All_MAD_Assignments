import 'dart:io';

class ShoppingCart{
  List<String> boughtItems=[];

  void addToCart(String item){
    boughtItems.add(item);
    print("${item} has been added to the cart");
  }
  void displayCart(){
    print("\nItems in the cart are: ");
    for(int i=0; i<boughtItems.length; i++){
      print("${i+1}. ${boughtItems[i]}");
    }
  }
}

void main(){
  ShoppingCart cart=new ShoppingCart();

  print("Shopping cart program:");

  while(true){
    print('\n1. Add items to the cart');
    print('2. Display items in the cart');
    print('3. Exit');
    print('\nEnter your choice:');

    String choice=stdin.readLineSync()??'';

    switch(choice){
      case '1':
        print("Enter the name of item you want to add:");
        String item=stdin.readLineSync()?? '';
        cart.addToCart(item);
        break;
      case '2':
        print("The items you have added to the cart is:");
        cart.displayCart();
        break;
      case '3':
        print("You are exiting the program. Thank You!");
        break;
      default:
        print('You are entering an invalid choice. Try again !');
    }
  }
}