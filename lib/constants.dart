library constants;

import 'package:flutter_html/style.dart';

// Must sync with VPMS Directus constants.js
const LOOP_TITLE_TENANT_REQUEST_ACCESS = 'tenantRequestAccess';
const LOOP_TITLE_NEW_AD_WITH_IMAGE = 'newAdWithImage';
const LOOP_TITLE_NEW_AMENITY_BOOKING = 'newAmenityBooking';
const LOOP_TITLE_MANAGEMENT_NOTICE = 'managementNotice';
const LOOP_TITLE_MANAGEMENT_RECEIPT = 'managementReceipt';
// const LOOP_TITLE_AMENITY_BKG_STATUS_CHG = 'amenityBkgStatusChg';
const LOOP_TITLE_AMENITY_BOOKING_CONFIRMED = 'amenityBkgConfirmed';
const LOOP_TITLE_AMENITY_BOOKING_CANCELLED = 'amenityBkgCancelled';

const LOCAL_DB_FILENAME = 'estateman_sqlt.db';

// Good looking font sizes for displaying HTML markup contents
final Map<String, Style> HTML_MKUP_OPTIONS = {
  'h3': Style(fontSize: FontSize(22.0)),
  'p': Style(fontSize: FontSize(18.0)),
  'ul': Style(fontSize: FontSize(18.0))
};
