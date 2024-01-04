import 'dart:io';
void main() {
  // print('Welcome to Dart!');
  // stdout.write('Hello Fraz. Enter age: ');
  // var age=stdin.readLineSync();
  // print("Yor age is, $age");
  //
  // new Human();

  //Declaration of variables
  // int? a;
  // //Assign
  // a=10;
  //  print(a);
  //
  //  BigInt b;
  //  b=BigInt.parse('797234721564313276377235216');
  //  print(b);
  //
  //  num percentage=99.245;
  //  print(percentage);
  //
  //  bool isLogin=false;
  //  print(isLogin);
  //  //Inline declaration
  // String name="Fraz";
  // name="Syed Fraz";
  // print(name);
  // String name = 'Fraz';
  // //var
  // var subject = "English";
  //
  // //dynamic
  // var section;
  //
  // section = 'D';
  // section = 42;
  // print(section);
  // section = true;
  // print(section);


  // var myC=myClass();
  // myC.printName("Babar Azam");
  // print(myC.Add(1,13));//Function calling

  var listNames=[10, 20, 20, 30];
  listNames.add(43);

  var names=[];

  //Adds item at the last of list
  names.add("Fraz");
  names.add(false);
  names.add(4.5643605);
  names.addAll(listNames);
  //For inserting in a particular index
  names.insert(2,"Syed");
  names.insertAll(2, listNames);

  //Update content at any index
  names[2]=true;
  print(listNames);
  print(names);
  //Replace
  names.replaceRange(1, 3, [1,3,4]);
  //Remove last
  names.removeLast();
  //Remove at
  names.removeAt(2);
  names.removeAt(2);
  //Remove range
  names.removeRange(4,7);
  print("$names");
  print("Length of the list is ${names.length}.");
  print("Reverse of the list is ${names.reversed}.");
  print("First element of the list is ${names.first}.");
  print("Last element of the list is ${names.last}.");
  print("Is Empty: ${names.isEmpty}.");
  print("Is not Empty: ${names.isNotEmpty}.");
  print("Element at 3rd index: ${names.elementAt(3)}.");
}

class myClass{
  void printName(String name){
    print(name);
  }

  int Add(int a, int b){
    int sum=a+b;
    return sum;
    sum=a+a;
  }
}


