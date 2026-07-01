import 'dart:io';

import 'package:flutter/services.dart';
import 'package:phone_zone/core/error/failure.dart';

class CacheFailure extends Failure {
  const CacheFailure({required super.message, required super.userMessage});

  factory CacheFailure.fromException(dynamic error) {
    if (error is FileSystemException) {
      return const CacheFailure(
        message: "FileSystemException occurred.",
        userMessage: "Local storage error, please restart the app.",
      );
    }
    if (error is PlatformException) {
      return CacheFailure(
        message: "PlatformException: ${error.message}",
        userMessage: "Failed to access saved data, please restart the app.",
      );
    }

    return CacheFailure(
      message: "Unexpected cache error: $error",
      userMessage: "A local storage error occurred, please restart the app.",
    );
  }

  @override
  bool get canRetry => false;
}
