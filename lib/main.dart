import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:menustrip/splash.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int discount = 0;
  int total = 0;
  double discounttt = 0;
  double gst = 0;
  double amount = 0;
  String dropdownvalue = '1';
  String dropdownvalue1 = '1';
  String dropdownvalue2 = '1';
  String dropdownvalue3 = '1';
  String dropdownvalue4 = '1';
  TextEditingController name = TextEditingController();

  // List<String> items = ['1', '2', '3'];

  @override
  void data(bool statusss, int price) {
    if (statusss == true ) {
      count += price;
    } else {
      count -= price;
    }

    if (discount == 10) {
      discounttt = (count * discount) / 100;
    }
    if (discount == 5) {
      discounttt = (count * discount) / 100;
    }
    amount = count - discounttt;
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/back3.jpg"), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu's"),
        ),
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Expanded(flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("img/back5.jpg"),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.white.withOpacity(1), BlendMode.dstATop),
                  )),
              margin: EdgeInsets.all(50),
              height: 500,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 3)),
                              hintText: "Enter name"),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender : Male",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Radio(
                        value: "Male",
                        groupValue: gender,
                        onChanged: (value) {
                          // Fluttertoast.showToast(
                          //     msg: "Male",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //     gravity: ToastGravity.CENTER,
                          //     timeInSecForIosWeb: 1,
                          //     backgroundColor: Colors.red,
                          //     textColor: Colors.white,
                          //     fontSize: 16.0);
                          setState(() {
                            gender = value!;
                            discount = 10;
                            data(true, 0);
                          });
                        },
                      ),
                      Text("Female",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Radio(
                        value: "FeMale",
                        groupValue: gender,
                        onChanged: (value) {
                          // Fluttertoast.showToast(
                          //     msg: "Female",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //     gravity: ToastGravity.CENTER,
                          //     timeInSecForIosWeb: 1,
                          //     backgroundColor: Colors.red,
                          //     textColor: Colors.white,
                          //     fontSize: 16.0);
                          setState(() {
                            gender = value!;
                            discount = 5;
                            data(true, 0);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bubblegum Blast = $a",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Checkbox(
                        value: cofeestatus,
                        onChanged: (value) {
                          setState(() {
                            cofeestatus = value!;
                            data(cofeestatus, a);
                          });
                        },
                      ),
                      DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,

                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            print(newvalue);
                            setState(() {
                              dropdownvalue=newvalue!;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Spicy Guava = $b",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Checkbox(
                        value: vanilastatus,
                        onChanged: (value) {
                          setState(() {
                            vanilastatus = value!;
                            data(vanilastatus, b);
                          });
                        },
                      ),
                      DropdownButton(
                          value: dropdownvalue1,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue1=newvalue!;
                            });
                          })

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Green Apple Lemonade = $c",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Checkbox(
                        value: icecreamstatus,
                        onChanged: (value) {
                          setState(() {
                            icecreamstatus = value!;
                            data(icecreamstatus, c);
                          });
                        },
                      ),
                      DropdownButton(
                          value: dropdownvalue2,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue2=newvalue!;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Couple Coffee = $d",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Checkbox(
                        value: couplestatus,
                        onChanged: (value) {
                          setState(() {
                            couplestatus = value!;
                            data(couplestatus, d);
                          });
                        },
                      ),
                      DropdownButton(
                          value: dropdownvalue3,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue3=newvalue!;
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Orange Iced Coffee = $e",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                      Checkbox(
                        value: teastatus,
                        onChanged: (value) {
                          setState(() {
                            teastatus = value!;
                            data(teastatus, e);
                          });
                        },
                      ),
                      DropdownButton(
                          value: dropdownvalue4,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue4=newvalue!;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 1,
            child: Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 10),
                    color: Colors.orangeAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Name = ${name.text}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Total Order value = $count",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Text("Discount = $discount ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.red)),
                    Text("Your Amount = $amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic))
                  ],
                )),
          )
        ]),
      ),
    );
  }

  String gender = "";
  bool cofeestatus = false;
  bool vanilastatus = false;
  bool icecreamstatus = false;
  bool couplestatus = false;
  bool teastatus = false;
  int a = 180;
  int b = 200;
  int c = 160;
  int d = 250;
  int e = 220;
  int count = 0;

// setvalue()
// {
//   if(cofeestatus == true)
//     {
//       setState(() {
//         count = a;
//       });
//     }
//   else if(cofeestatus == true && vanilastatus == true)
//     {
//       setState(() {
//         count=a+b;
//       });
//     }
//   else if(cofeestatus == true && vanilastatus == true && icecreamstatus == true)
//   {
//     setState(() {
//       count=a+b+c;
//     });
//   }
//   else if(cofeestatus == true && vanilastatus == true && icecreamstatus == true && couplestatus ==true)
//   {
//     setState(() {
//       count=a+b+c+d;
//     });
//   }
//   else
//     {
//       setState(() {
//         count=a+b+c+d+e;
//       });
//     }
//   return count;
// }

}
