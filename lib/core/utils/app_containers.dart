import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_colors.dart';
import 'package:nti_course/core/utils/app_pading.dart';

class MyContainers extends StatelessWidget {
  const MyContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: 365,
          height: 105,
          decoration: BoxDecoration(
            boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.24),
                 offset: Offset(0, 4),
                 blurRadius: 6, // Softness of shadow
               ),
            ],
            borderRadius: BorderRadius.circular(22),
            color: AppColors.primaryLight,
          ),
          child: Padding(padding: AppPadings.pagePadding,
          child:Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My First Task\n',
                      style: TextStyle(
                        fontSize: 16 , fontWeight: FontWeight.w400, color: AppColors.black,
                      ),
                      ),
                      Text('Improve my English skills\n by trying to speak',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
              ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '22/04/2025\n 05:00 PM',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
