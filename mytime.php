<?php

$unix_timestamp = $_POST['timestamp'];
$datetime = new DateTime("@$unix_timestamp");
// Display GMT datetime
echo $datetime->format('d-m-Y H:i:s');
$date_time_format = $datetime->format('Y-m-d H:i:s');
$time_zone_from="UTC";
$time_zone_to='Asia/Kolkata';
$display_date = new DateTime($date_time_format, new DateTimeZone($time_zone_from));
// Date time with specific timezone
$display_date->setTimezone(new DateTimeZone($time_zone_to));
echo $display_date->format('d-m-Y H:i:s');


?>