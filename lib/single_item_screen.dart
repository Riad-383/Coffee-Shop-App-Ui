import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
 SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:const  EdgeInsets.only(left: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.white.withOpacity(0.5),),
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: Image.asset('assets/$img.png', width: MediaQuery.of(context).size.width/1.2,),
              ),
           const    SizedBox(height: 50,),
              Padding(padding:const  EdgeInsets.only(left: 25,right: 40),
              child: Column(
                children: [
                  Text('Best Coffee',style: TextStyle(color: Colors.white.withOpacity(0.4),letterSpacing: 3),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:const  EdgeInsets.all(15),
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(20 )
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(CupertinoIcons.minus,size: 18,color: Colors.white,),
                            SizedBox(width: 15,),
                            Text('2',style: TextStyle(color: Colors.white,
                            fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(width: 15,),
                            Icon(CupertinoIcons.plus,size: 18,color: Colors.white,)
      
                            ],
                          ),
                        ),
                        const Text('\$30.20',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)
      
                      ],
                    ),
                  ),
                 const SizedBox(height: 20,),
                  Text('Coffee is a major source of antioxidants in the diet. It has many health benefits.',style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.4),
                  ),
                  ),
               const    SizedBox(height: 20,),
                const  Row(
                    children: [
                      Text('Volume:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                      SizedBox(width: 10,),
                      Text('60',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)
                    ],
                  ),
                 const  SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                          decoration: BoxDecoration(
                            color:const  Color.fromARGB(255,50, 54, 56),
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: const Text('Add to Cart',style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1,
                          ),),
                        ),
                        
                       Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xffE57734),
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: const Icon(Icons.favorite_outline,color: Colors.white,)
                        )
                ],
              ),)
            ],
          ),
        )]),
          )
        ),
      ),);
  }
}
