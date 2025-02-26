import 'package:firexcode/firexcode.dart';

class RoundedDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: XRoundedCornerDrawer(
        expansionTileTitle: 'Account Setup',
        expansionTileSubTitle: 'Admin',
        emailUpperCase: true,
        photoUrl:
            'https://cdn6.f-cdn.com/ppic/126627211/logo/27718345/QMYio/profile_logo_.jpg',
        userName: 'Md Zeeshan',
        userEmail: 'ctechviral@gmail.com',
        progressName: 'Complete Profile',
        progressColor: Colors.pinkAccent,
        progressValue: .9,
        expansionTileTitleColor: Colors.black,
        expansionchildren: <Widget>[
          MaterialXButton(
            onTap: () {},
            color: Colors.pink,
            height: 30,
            width: 200,
            child: 'Profile Setup'.xTextColorWhite(),
          ),
          SizedBox(
            height: 15,
          ),
          MaterialXButton(
            onTap: () {},
            color: Colors.black,
            height: 30,
            width: 200,
            spreadRadius: 0.0,
            elavation: 1.0,
            rounded: 12,
            child: 'Logout'.xTextColorWhite(),
          ),
          SizedBox(
            height: 30,
          ),
        ],
        menuChildren: <Widget>[
          XListTile(
            onTap: () {},
            selectedColor: Colors.pink,
            icon: Icons.dashboard,
            iconSize: 40,
            selected: true,
            text: 'DashBoard',
            unSelectedColor: Colors.grey,
          ),
          XListTile(
            onTap: () {},
            selectedColor: Colors.pink,
            icon: Icons.account_balance,
            iconSize: 40,
            selected: false,
            text: 'My Account',
            unSelectedColor: Colors.grey,
          ),
          XListTile(
            onTap: () {},
            selectedColor: Colors.pink,
            icon: Icons.table_chart,
            iconSize: 40,
            selected: false,
            text: 'Transaction',
            unSelectedColor: Colors.grey,
          ),
          XListTile(
            trailing: Icon(Icons.adb),
            onTap: () {},
            selectedColor: Colors.pink,
            icon: Icons.settings,
            iconSize: 40,
            selected: false,
            text: 'Setting',
            unSelectedColor: Colors.grey,
          ),
        ],
        bottomMenu: <Widget>[
          Divider(
            color: Colors.grey[300],
          ),
          XListTile(
            onTap: () {},
            selectedColor: Colors.pink,
            icon: Icons.dashboard,
            iconSize: 40,
            selected: false,
            text: 'Term & condition...',
            unSelectedColor: Colors.grey,
          ),
          Divider(
            color: Colors.grey[300],
          ),
          XListTile(
            //onTap: (){},
            selectedColor: Colors.pink,
            //icon: Icons.dashboard,
            iconSize: 40,
            trailing: MaterialXButton(
              color: Colors.green,
              onTap: () {},
              width: 80,
              height: 30,
              rounded: 10,
              child: 'Active'.xTextColorWhite(),
            ),
            selected: false,
            text: 'Account Status',
            unSelectedColor: Colors.grey,
          ),
          Divider(
            color: Colors.grey[300],
          ),
        ],
      ),
      appBar: AppBar(
        title: Textmaterial(
          text: 'Rounded Drawer example',
        ),
      ),
    );
  }
}
