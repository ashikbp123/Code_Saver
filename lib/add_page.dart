import 'package:flutter/material.dart';

import 'database_services.dart';


class AddPage extends StatelessWidget {
   AddPage({super.key});

  TextEditingController title= TextEditingController();
  TextEditingController code= TextEditingController();

   final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Code Saver"),
        centerTitle: true,
      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
              
              children: [
                TextFormField(
                  controller: title,
                  validator: (v){
                    if(v!.isEmpty)
                    {
                      return("please enter the title");
                    }return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Enter the Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                const SizedBox(height: 30,),
          
          
                TextFormField(
                  controller: code,
                  maxLines: null,
                  validator: (v){
                    if(v!.isEmpty)
                      {
                        return("please enter your code here");
                      }return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Enter the code",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
                      backgroundColor: MaterialStateProperty.all(Colors.white), // Background color
                      foregroundColor: MaterialStateProperty.all(Colors.black87), // Text color
                    ),
          
                    onPressed: (){
                      if(formkey.currentState!.validate()){
                        DataBaseServices.addData(title.text,code.text);
                        // DataBaseServices.addDate(title.text, code.text);
                      }
                    },
          
                    child: const Text("ADD "))
              ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
