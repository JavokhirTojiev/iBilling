import 'package:flutter/material.dart';
import '../ui/ui.dart';

class StatusIndicator extends StatelessWidget {
  final String contractStatus;

  const StatusIndicator({Key? key, required this.contractStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return contractStatus == 'Paid'
        ? Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.lighterGreen),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 3.0,
                bottom: 3.0,
                left: 10,
                right: 10.0,
              ),
              child: Text(
                contractStatus,
                style: const TextStyle(
                  color: AppColor.lightGreenColor,
                ),
              ),
            ),
          )
        : contractStatus == 'In process'
            ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.lighterOrange),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 3.0,
                    bottom: 3.0,
                    left: 10,
                    right: 10.0,
                  ),
                  child: Text(
                    contractStatus,
                    style: const TextStyle(
                      color: AppColor.orangeColor,
                    ),
                  ),
                ),
              )
            : contractStatus == 'Rejected by Payme'
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.lighterRed),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 3.0,
                        bottom: 3.0,
                        left: 10,
                        right: 10.0,
                      ),
                      child: Text(
                        contractStatus,
                        style: const TextStyle(
                          color: AppColor.redColor,
                        ),
                      ),
                    ),
                  )
                : contractStatus == 'Rejected by IQ'
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.lighterRed),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 3.0,
                            bottom: 3.0,
                            left: 10,
                            right: 10.0,
                          ),
                          child: Text(
                            contractStatus,
                            style: const TextStyle(
                              color: AppColor.redColor,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.lighterRed),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 3.0,
                            bottom: 3.0,
                            left: 10,
                            right: 10.0,
                          ),
                          child: Text(
                            'Error',
                            style: TextStyle(
                              color: AppColor.redColor,
                            ),
                          ),
                        ),
                      );
  }
}
