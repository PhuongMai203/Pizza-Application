import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/screens/home/views/details_screen.dart';

import '../../auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import '../blocs/get_pizza_bloc/get_pizza_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        title: Row(
          children: [
            Image.asset(
              'assets/8.png',
              scale: 14,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'PIZZA',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: const Icon(CupertinoIcons.cart),
          ),
          IconButton(
              onPressed: (){
                context.read<SignInBloc>().add(SignOutRequired());
              },
              icon: const Icon(CupertinoIcons.arrow_right_to_line),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
              childAspectRatio: 9/16
            ),
            itemCount: 8,
            itemBuilder: (context, int i){
              return Material(
                color: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(3, 3)
                        ),
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/1.png'
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: const Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                                  child: Text(
                                    "NON-VEG",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox( width: 8,),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: const Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                                  child: Text(
                                    "BALANCE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 10
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox( height: 8,),
                        const Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "Cheesy Marvel",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "Crafting joy: your pizza, your rules, best taster!",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "\$12.0",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color:Theme.of(context).colorScheme.primary,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "\$15.0",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:Colors.grey.shade500,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(CupertinoIcons.add_circled_solid)
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}