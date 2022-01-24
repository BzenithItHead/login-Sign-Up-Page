import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage('images/register.png'),
            fit:BoxFit.cover
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (){
                Navigator.pushNamed(context, 'login');
                },
              icon: Icon(Icons.arrow_back),
            ),
          ],
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 65, top: 100),
              child: Text('Create\nAn Account', style: TextStyle(color: Colors.white,
                  fontSize: 43, fontWeight: FontWeight.bold),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 40,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('sign in', style: TextStyle(color:Colors.orange, fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orange,
                          child: IconButton(
                            onPressed: (){},
                            color: Colors.white,
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text('Sign Up', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,
                                fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
