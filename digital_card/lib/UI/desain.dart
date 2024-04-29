import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital Card',
          style: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 20)
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 105, 190),
      ),
      body: Center(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if(constraints.maxWidth < 600){
                return Column( 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 207.5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('image/Foto.png'))
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Muhammad Ilham Misbakhul Anwar',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('Mahasiswa',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('085171224653',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('ilhammisbakhul123@gmail.com',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                          ),
                          textAlign: TextAlign.start,),                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxHeight * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('image/QRCode.png'))
                      ),
                    ),
                  ),
                ],
              );
              }else{
                return Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    width: constraints.maxWidth * 0.2,
                    height: 277,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('image/Foto.png'))
                    ),
                  ),
                  SizedBox(width: constraints.maxWidth  * 0.05,),
                  Center(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('DIGITAL CARD',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: constraints.maxWidth * 0.03
                          )),
                          SizedBox(height: 25,),
                          Text('Nama : Muhammad Ilham Misbakhul Anwar',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: constraints.maxWidth * 0.02
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('Jabatan : Mahasiswa',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: constraints.maxWidth * 0.02
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('No. HP : 085171224653',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: constraints.maxWidth * 0.02
                          ),
                          textAlign: TextAlign.start,),
                          SizedBox(height: 15,),
                          Text('Email : ilhammisbakhul123@gmail.com',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            fontSize: constraints.maxWidth * 0.02
                          ),
                          textAlign: TextAlign.start,),
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: constraints.maxWidth  * 0.05,),
                  Center(
                    child: Expanded(
                      child: Container(
                        width: constraints.maxWidth * 0.2,
                        height: constraints.maxHeight * 0.8,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('image/QRCode.png'))
                        ),
                      ),
                    ),
                  ),
                ],
              );
              }
              
            }
          ),
          ),
      )
    );
  }
}