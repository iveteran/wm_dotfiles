#!/bin/bash

# Output Format:
#   c    Weather condition,
#   C    Weather condition textual name,
#   x    Weather condition, plain-text symbol,
#   h    Humidity,
#   t    Temperature (Actual),
#   f    Temperature (Feels Like),
#   w    Wind,
#   l    Location,
#   m    Moon phase 🌑🌒🌓🌔🌕🌖🌗🌘,
#   M    Moon day,
#   p    Precipitation (mm/3 hours),
#   P    Pressure (hPa),
#   u    UV index (1-12),
#   D    Dawn*,
#   S    Sunrise*,
#   z    Zenith*,
#   s    Sunset*,
#   d    Dusk*,
#   T    Current time*,
#   Z    Local timezone.
#   (*times are shown in the local timezone)
#printf " ShenZhen: `curl -m 3 wttr.in/ShenZhen?format=2 2>/dev/null` "
printf " ShenZhen: `curl -m 3 wttr.in/ShenZhen?format=%C+%t+%w 2>/dev/null` "
