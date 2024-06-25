import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  context.go("/product/Cosmetics");
                },
                child: const Card(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Text("Cosmetics" ,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  context.go("/product/Electronics");
                },
                child: const Card(
                  color:Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(45.0),
                    child: Text("Electronics",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
