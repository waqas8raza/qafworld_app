import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Address Proof',style: TextStyle(fontSize: 18,color: Colors.grey),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: height*.26,
                width: width*.40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200
                ),
                child: Image(
                  image: AssetImage('assets/proof.jpg'),fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: height*.020,),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: height*.07,
                  width: width*.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        Color(0xfffaaf40),
                        Color(0xff01acee)
                      ])
                  ),
                  child: const Center(child: Text('Select Image',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
              SizedBox(height: height*.020,),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  height: height*.07,
                  width: width*.92,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        Color(0xfffaaf40),
                        Color(0xff01acee)
                      ])
                  ),
                  child: const Center(child: Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
