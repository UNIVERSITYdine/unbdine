import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:unbdine/utils/app_constant.dart';
import 'package:unbdine/widgets/custom_divider.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({
    Key? key,
    required this.appName,
    required this.appVersion,
    required this.userName,
    required this.userAvatar,
  }) : super(key: key);

  final String appName;
  final String appVersion;
  final String userName;
  final String userAvatar;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.h,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: AppConstant.primaryColor,
                  backgroundImage:
                      userAvatar.isNotEmpty ? NetworkImage(userAvatar) : null,
                  child: userAvatar.isEmpty
                      ? Icon(
                          Icons.person_rounded,
                          color: AppConstant.backgroundColor,
                          size: 25.sp,
                        )
                      : null,
                ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    userName.isNotEmpty ? userName : 'user',
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppConstant.titlecolor,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomDivider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.history_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Order history',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.check_circle_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Saved meals',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.payment_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Payment methods',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              const CustomDivider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.info_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Terms and conditions',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.feedback_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Feedback',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.star_rounded,
                  color: AppConstant.titlecolor.withOpacity(0.8),
                ),
                title: Text(
                  'Rate us',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              const Spacer(),
              Card(
                clipBehavior: Clip.hardEdge,
                color: AppConstant.backgroundColor,
                elevation: 0,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  leading: Icon(
                    Icons.logout_rounded,
                    color: AppConstant.titlecolor.withOpacity(0.8),
                  ),
                  title: Text(
                    'Logout',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppConstant.titlecolor,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Text(
                  '$appName v$appVersion',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppConstant.titlecolor,
                      ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}