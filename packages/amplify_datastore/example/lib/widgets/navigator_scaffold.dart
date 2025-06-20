import 'package:amplify_datastore_example/widgets/auth_view.dart';
import 'package:amplify_datastore_example/widgets/public_view.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class NavigatorScaffold extends StatefulWidget {
  const NavigatorScaffold({super.key, this.isAmplifyConfigured = false});
  final bool isAmplifyConfigured;

  @override
  State<NavigatorScaffold> createState() => _NavigatorScaffoldState();
}

class _NavigatorScaffoldState extends State<NavigatorScaffold>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best DataStore App Ever'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.public), text: "Public"),
            Tab(icon: Icon(Icons.verified_user), text: "Protected"),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          await Amplify.Auth.signOut();
        },
        child: Text('Sign Out'),
      ),
      body: widget.isAmplifyConfigured
          ? TabBarView(
              controller: _tabController,
              children: [
                PublicView(isAmplifyConfigured: widget.isAmplifyConfigured),
                AuthView(isAmplifyConfigured: widget.isAmplifyConfigured),
              ],
            )
          : Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
