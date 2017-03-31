#!/bin/bash

cite 'about-alias'
about-alias 'Curl aliases for convenience.'

# set apt aliases
function _set_pkg_aliases()
{
	if [ -x $(which curl) ]; then
		# follow redirects
                alias cl='curl -L'
                # follow redirects, download as original name
                alias clo='curl -L -O'
                # follow redirects, download as original name, continue
                alias cloc='curl -L -C - -O'
                # follow redirects, download as original name, continue, retry 5 times
                alias clocr='curl -L -C - -O --retry 5'
                # follow redirects, fetch banner
                alias clb='curl -L -I'
                # get stats
                alias curls='curl -o /dev/null -s -w "local_ip: %{local_ip}\nlocal_port: %{local_port}\nremote_ip:%{remote_ip}\nremote_port:%{remote_port}\nhttp_code: %{http_code}\ntime_namelookup: %{time_namelookup}\ntime_connect: %{time_connect}\ntime_appconnect: %{time_appconnect}\ntime_pretransfer: %{time_pretransfer}\ntime_starttransfer: %{time_starttransfer}\ntime_total: %{time_total}\nsize_request(B): %{size_request}\nsize_download(B): %{size_download}\nspeed_download(Bps): %{speed_download}\n"'
	fi
}

_set_pkg_aliases
