import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Name'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://img.freepik.com/vector-premium/ilustracion-avatar-hombre-negocios-retrato-usuario-dibujos-animados-icono-perfil-usuario_118339-5507.jpg?w=740',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://get.wallhere.com/photo/sunrise-long-exposure-nature-water-Sweden-Link-ping-jetty-dock-clear-sky-1697821.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('opciones'),
              onTap: () => null, // cuando presiona el menu
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('ajustes'),
              onTap: () => null, // cuando presiona el menu
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('cerra sesion'),
              onTap: () => null, // cuando presiona el menu
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al hacer clic en el FloatingActionButton
        },
        child: Icon(Icons.add), 
      ),
    );
  }
}
