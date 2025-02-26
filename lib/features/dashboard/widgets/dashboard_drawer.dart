import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  final String email;
  final VoidCallback onLogout;

  const DashboardDrawer({
    super.key,
    required this.email,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(email),
          _buildDrawerItem(
            icon: Icons.home,
            title: 'Home',
            onTap: () => Navigator.pop(context),
          ),
          _buildExpansionTile(
            context: context,
            icon: Icons.settings,
            title: 'Settings',
            children: [
              _buildDrawerItem(
                icon: Icons.arrow_right,
                title: 'category 1',
                onTap: () {},
              ),
              _buildDrawerItem(
                icon: Icons.arrow_right,
                title: 'category 2',
                onTap: () {},
              ),
            ],
          ),
          _buildExpansionTile(
            context: context,
            icon: Icons.help,
            title: 'help',
            children: [
              _buildDrawerItem(
                icon: Icons.arrow_right,
                title: 'category 1',
                onTap: () {},
              ),
              _buildDrawerItem(
                icon: Icons.arrow_right,
                title: 'category 2',
                onTap: () {},
              ),
            ],
          ),
          Divider(),
          _buildDrawerItem(
            icon: Icons.exit_to_app,
            title: 'Logout',
            onTap: onLogout,
          ),
        ],
      ),
    );
  }
}

Widget _buildDrawerHeader(String email) {
  return DrawerHeader(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xffB81736),
          Color(0xFF500000),
        ],
      ),
    ),
    child: Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Puma',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              email,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildDrawerItem({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0),
    child: ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(title),
      onTap: onTap,
    ),
  );
}

Widget _buildExpansionTile({
  required BuildContext context,
  required IconData icon,
  required String title,
  required List<Widget> children,
}) {
  return Theme(
    data: Theme.of(context).copyWith(
      dividerColor: Colors.transparent,
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: ExpansionTile(
        leading: Icon(icon, color: Colors.red),
        title: Text(title),
        children: children,
      ),
    ),
  );
}
