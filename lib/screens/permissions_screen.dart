import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:permission/permission.dart';

class PermissionsScreen extends StatefulWidget {
  static const String id = 'permissions_screen';

  @override
  _PermissionsScreenState createState() => new _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {

  bool permission1 = false;
  bool permission2 = false;
  bool permission3 = false;
  bool permission4 = false;
  bool permission5 = false;
  bool permission6 = false;
  bool permission7 = false;
  bool permission8 = false;
  bool permission9 = false;
  bool permission10 = false;
  bool permission11 = false;

  int radioValue = 0;
  PermissionName permissionName = PermissionName.Internet;
  String message = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Visibility(
                            visible: Platform.isAndroid,
                            child: Column(
                              children: <Widget>[
                                Checkbox(
                                  value: permission1,
                                  onChanged: (v) {
                                    setState(() {
                                      permission1 = v;
                                    });
                                  },
                                ),
                                Text('SMS'),
                                Checkbox(
                                  value: permission2,
                                  onChanged: (v) {
                                    setState(() {
                                      permission2 = v;
                                    });
                                  },
                                ),
                                Text('Phone'),
                                Checkbox(
                                  value: permission3,
                                  onChanged: (v) {
                                    setState(() {
                                      permission3 = v;
                                    });
                                  },
                                ),
                                Text('State'),
                                Checkbox(
                                  value: permission4,
                                  onChanged: (v) {
                                    setState(() {
                                      permission4 = v;
                                    });
                                  },
                                ),
                                Text('Camera'),
                                Checkbox(
                                  value: permission5,
                                  onChanged: (v) {
                                    setState(() {
                                      permission5 = v;
                                    });
                                  },
                                ),
                                Text('Storage'),
                                Checkbox(
                                  value: permission6,
                                  onChanged: (v) {
                                    setState(() {
                                      permission6 = v;
                                    });
                                  },
                                ),
                                Text('Sensors'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Visibility(
                            visible: Platform.isAndroid,
                            child: Column(
                              children: <Widget>[
                                Checkbox(
                                  value: permission7,
                                  onChanged: (v) {
                                    setState(() {
                                      permission7 = v;
                                    });
                                  },
                                ),
                                Text('Calendar'),
                                Checkbox(
                                  value: permission8,
                                  onChanged: (v) {
                                    setState(() {
                                      permission8 = v;
                                    });
                                  },
                                ),
                                Text('Contacts'),
                                Checkbox(
                                  value: permission9,
                                  onChanged: (v) {
                                    setState(() {
                                      permission9 = v;
                                    });
                                  },
                                ),
                                Text('Location'),
                                Checkbox(
                                  value: permission10,
                                  onChanged: (v) {
                                    setState(() {
                                      permission10 = v;
                                    });
                                  },
                                ),
                                Text('Internet'),
                                Checkbox(
                                  value: permission11,
                                  onChanged: (v) {
                                    setState(() {
                                      permission11 = v;
                                    });
                                  },
                                ),
                                Text('Microphone'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(onTap: getPermissionsStatus, text: 'Get permission status'),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(onTap: requestPermissions, text: 'Request permissions'),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(onTap: Permission.openSettings, text: 'Open settings'),
                SizedBox(
                  height: 12.0,
                ),
                Text(message),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getPermissionsStatus() async {
    List<PermissionName> permissionNames = [];
    if (permission1) permissionNames.add(PermissionName.SMS);
    if (permission2) permissionNames.add(PermissionName.Phone);
    if (permission3) permissionNames.add(PermissionName.State);
    if (permission4) permissionNames.add(PermissionName.Camera);
    if (permission5) permissionNames.add(PermissionName.Storage);
    if (permission6) permissionNames.add(PermissionName.Sensors);
    if (permission7) permissionNames.add(PermissionName.Calendar);
    if (permission8) permissionNames.add(PermissionName.Contacts);
    if (permission9) permissionNames.add(PermissionName.Location);
    if (permission10) permissionNames.add(PermissionName.Internet);
    if (permission11) permissionNames.add(PermissionName.Microphone);
    message = '';
    List<Permissions> permissions = await Permission.getPermissionsStatus(permissionNames);
    permissions.forEach((permission) {
      message += '${permission.permissionName}: ${permission.permissionStatus}\n';
    });
    setState(() {
      message.toString();
    });
  }

  getSinglePermissionStatus() async {
    var permissionStatus = await Permission.getSinglePermissionStatus(permissionName);
    setState(() {
      message = permissionStatus.toString();
    });
  }

  requestPermissions() async {
    List<PermissionName> permissionNames = [];
    if (permission1) permissionNames.add(PermissionName.SMS);
    if (permission2) permissionNames.add(PermissionName.Phone);
    if (permission3) permissionNames.add(PermissionName.State);
    if (permission4) permissionNames.add(PermissionName.Camera);
    if (permission5) permissionNames.add(PermissionName.Storage);
    if (permission6) permissionNames.add(PermissionName.Sensors);
    if (permission7) permissionNames.add(PermissionName.Calendar);
    if (permission8) permissionNames.add(PermissionName.Contacts);
    if (permission9) permissionNames.add(PermissionName.Location);
    if (permission10) permissionNames.add(PermissionName.Internet);
    if (permission11) permissionNames.add(PermissionName.Microphone);
    message = '';
    var permissions = await Permission.requestPermissions(permissionNames);
    permissions.forEach((permission) {
      message += '${permission.permissionName}: ${permission.permissionStatus}\n';
    });
    setState(() {});
  }
}