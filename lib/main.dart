import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lembre-se',
      home: Blocos(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Blocos extends StatefulWidget {
  @override
  _BlocosState createState() => _BlocosState();
}

class _BlocosState extends State<Blocos> {
  List<String> _textos = ['Lembrete 1', 'Lembrete 2', 'Lembrete 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lembre-se',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          )
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    _buildBloc(0),
                    _buildBloc(1),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    _buildBloc(2),
                    _buildBlocAdd(),
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }

  Widget _buildBlocAdd() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "+",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w600,
                )
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBloc(int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _textos[index],
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      )
                    )
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.done),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}