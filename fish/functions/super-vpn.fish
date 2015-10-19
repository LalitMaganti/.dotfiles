function super-vpn -d 'VPN redirecting traffic'
    nmcli con down id client-internet
    nmcli con down id client-service
    nmcli con up id client-internet
end
