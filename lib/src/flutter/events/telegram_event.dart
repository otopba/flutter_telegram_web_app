part of '../../../telegram_web_app.dart';

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
class TelegramEvent {
  TelegramEvent(this.eventType, this.eventHandler);

  final TelegramEventType eventType;
  final Function eventHandler;
}

/// https://core.telegram.org/bots/webapps#events-available-for-mini-apps
enum TelegramEventType {
  activated('activated'),
  deactivated('deactivated'),
  themeChanged('themeChanged'),
  viewportChanged('viewportChanged'),
  safeAreaChanged('safeAreaChanged'),
  contentSafeAreaChanged('contentSafeAreaChanged'),
  mainButtonClicked('mainButtonClicked'),
  secondaryButtonClicked('secondaryButtonClicked'),
  backButtonClicked('backButtonClicked'),
  settingsButtonClicked('settingsButtonClicked'),
  invoiceClosed('invoiceClosed'),
  popupClosed('popupClosed'),
  qrTextReceived('qrTextReceived'),
  scanQrPopupClosed('scanQrPopupClosed'),
  clipboardTextReceived('clipboardTextReceived'),
  writeAccessRequested('writeAccessRequested'),
  contactRequested('contactRequested'),
  biometricManagerUpdated('biometricManagerUpdated'),
  biometricAuthRequested('biometricAuthRequested'),
  biometricTokenUpdated('biometricTokenUpdated'),
  fullscreenChanged('fullscreenChanged'),
  fullscreenFailed('fullscreenFailed'),
  deviceOrientationStarted('deviceOrientationStarted'),
  deviceOrientationStopped('deviceOrientationStopped'),
  deviceOrientationChanged('deviceOrientationChanged'),
  deviceOrientationFailed('deviceOrientationFailed'),
  homeScreenAdded('homeScreenAdded'),
  homeScreenChecked('homeScreenChecked'),
  accelerometerStarted('accelerometerStarted'),
  accelerometerStopped('accelerometerStopped'),
  accelerometerChanged('accelerometerChanged'),
  accelerometerFailed('accelerometerFailed'),
  gyroscopeStarted('gyroscopeStarted'),
  gyroscopeStopped('gyroscopeStopped'),
  gyroscopeChanged('gyroscopeChanged'),
  gyroscopeFailed('gyroscopeFailed'),
  locationManagerUpdated('locationManagerUpdated'),
  locationRequested('locationRequested'),
  shareMessageSent('shareMessageSent'),
  shareMessageFailed('shareMessageFailed'),
  emojiStatusSet('emojiStatusSet'),
  emojiStatusFailed('emojiStatusFailed'),
  emojiStatusAccessRequested('emojiStatusAccessRequested'),
  fileDownloadRequested('fileDownloadRequested'),
  ;

  const TelegramEventType(this.eventName);

  final String eventName;
}
