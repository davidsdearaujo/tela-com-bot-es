import 'package:flutter/material.dart';
import 'package:tela_botoes/clientes/clientes-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Botões"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: GridView(
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                childAspectRatio: 1.3),
            children: <Widget>[
              _buildButton(
                icon: Icons.person,
                label: "Clientes",
                action: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ClientesScreen(),
                      ),
                    ),
              ),
              _buildButton(
                icon: Icons.directions_bus,
                label: "Fornecedores",
              ),
              _buildButton(
                icon: Icons.pie_chart_outlined,
                label: "Produtos",
              ),
              _buildButton(
                icon: Icons.build,
                label: "Servços",
              ),
              _buildButton(
                icon: Icons.attach_money,
                label: "Vendas",
              ),
              _buildButton(
                icon: Icons.shopping_cart,
                label: "Compras",
              ),
              _buildButton(
                icon: Icons.content_copy,
                label: "Relatórios",
              ),
              _buildButton(
                icon: Icons.info,
                label: "Iformações",
              ),
            ],
          ),
        ));
  }

  Widget _buildButton(
      {@required IconData icon, @required String label, Function() action}) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: 25,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              colors: [Color(0xFF9B111E), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white, size: 55),
            Text(label, style: TextStyle(color: Colors.white, fontSize: 25))
          ],
        ),
      ),
    );
  }
}
