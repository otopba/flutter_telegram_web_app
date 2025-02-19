library telegram_web_app;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:telegram_web_app/src/bridge/js_function_util.dart';
import 'package:telegram_web_app/src/flutter/mock/mock_bottom_button.dart';
import 'package:telegram_web_app/src/flutter/util/data_parser.dart';
import 'package:telegram_web_app/src/js/telegram/telegram_js_models.dart';
import 'package:telegram_web_app/src/js/telegram_js.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

export 'src/bridge/color_utils.dart';

part 'src/flutter/events/accelerometer/accelerometer_changed_event.dart';
part 'src/flutter/events/accelerometer/accelerometer_failed_event.dart';
part 'src/flutter/events/accelerometer/accelerometer_started_event.dart';
part 'src/flutter/events/accelerometer/accelerometer_stopped_event.dart';
part 'src/flutter/events/activated_event.dart';
part 'src/flutter/events/back_button_clicked_event.dart';
part 'src/flutter/events/biometric_auth_requested_event.dart';
part 'src/flutter/events/biometric_manager_updated_event.dart';
part 'src/flutter/events/biometric_token_updated_event.dart';
part 'src/flutter/events/clipboard_text_received_event.dart';
part 'src/flutter/events/contact_requested_event.dart';
part 'src/flutter/events/content_safe_area_changed_event.dart';
part 'src/flutter/events/deactivated_event.dart';
part 'src/flutter/events/device_orientation_changed_event.dart';
part 'src/flutter/events/device_orientation_failed_event.dart';
part 'src/flutter/events/device_orientation_started_event.dart';
part 'src/flutter/events/device_orientation_stopped_event.dart';
part 'src/flutter/events/emoji/emoji_status_access_requested_event.dart';
part 'src/flutter/events/emoji/emoji_status_failed_event.dart';
part 'src/flutter/events/emoji/emoji_status_set_event.dart';
part 'src/flutter/events/file_download_requested_event.dart';
part 'src/flutter/events/fullscreen_changed_event.dart';
part 'src/flutter/events/fullscreen_failed_event.dart';
part 'src/flutter/events/gyroscope/gyroscope_changed_event.dart';
part 'src/flutter/events/gyroscope/gyroscope_failed_event.dart';
part 'src/flutter/events/gyroscope/gyroscope_started_event.dart';
part 'src/flutter/events/gyroscope/gyroscope_stopped_event.dart';
part 'src/flutter/events/home_screen_added_event.dart';
part 'src/flutter/events/home_screen_checked_event.dart';
part 'src/flutter/events/invoice_closed_event.dart';
part 'src/flutter/events/location_manager_updated_event.dart';
part 'src/flutter/events/location_requested_event.dart';
part 'src/flutter/events/main_button_clicked_event.dart';
part 'src/flutter/events/popup_closed_event.dart';
part 'src/flutter/events/qr_text_received_event.dart';
part 'src/flutter/events/safe_area_changed_event.dart';
part 'src/flutter/events/scan_qr_popup_closed_event.dart';
part 'src/flutter/events/secondary_button_clicked_event.dart';
part 'src/flutter/events/settings_button_clicked_event.dart';
part 'src/flutter/events/share_message_failed_event.dart';
part 'src/flutter/events/share_message_sent_event.dart';
part 'src/flutter/events/telegram_event.dart';
part 'src/flutter/events/theme_changed_event.dart';
part 'src/flutter/events/viewport_changed_event.dart';
part 'src/flutter/events/write_access_requested_event.dart';
part 'src/flutter/mock/mock_theme_params.dart';
part 'src/flutter/models/accelerometer/accelerometer.dart';
part 'src/flutter/models/accelerometer/accelerometer_start_params.dart';
part 'src/flutter/models/back_button.dart';
part 'src/flutter/models/biometric/biometric_authenticate_params.dart';
part 'src/flutter/models/biometric/biometric_manager.dart';
part 'src/flutter/models/biometric/biometric_request_access_params.dart';
part 'src/flutter/models/bottom_button.dart';
part 'src/flutter/models/bottom_button_params.dart';
part 'src/flutter/models/chat_types.dart';
part 'src/flutter/models/cloud_storage.dart';
part 'src/flutter/models/content_safe_area_inset.dart';
part 'src/flutter/models/emoji_status_params.dart';
part 'src/flutter/models/gyroscope/gyroscope.dart';
part 'src/flutter/models/gyroscope/gyroscope_start_params.dart';
part 'src/flutter/models/haptic_feedback.dart';
part 'src/flutter/models/invoice_status.dart';
part 'src/flutter/models/location/location_data.dart';
part 'src/flutter/models/location/location_manager.dart';
part 'src/flutter/models/orientation/device_orientation.dart';
part 'src/flutter/models/orientation/device_orientation_start_params.dart';
part 'src/flutter/models/popup_button.dart';
part 'src/flutter/models/safe_area_inset.dart';
part 'src/flutter/models/settings_button.dart';
part 'src/flutter/models/story/story_share_params.dart';
part 'src/flutter/models/story/story_widget_link.dart';
part 'src/flutter/models/telegram_color_scheme.dart';
part 'src/flutter/models/telegram_init_data.dart';
part 'src/flutter/models/theme_params.dart';
part 'src/flutter/models/web_app_chat.dart';
part 'src/flutter/models/web_app_init_data.dart';
part 'src/flutter/models/web_app_user.dart';
part 'src/flutter/util/theme_util.dart';
part 'src/telegram_app.dart';
part 'src/web_apps/telegram_web_app_fake.dart';
part 'src/web_apps/telegram_web_app_impl.dart';
