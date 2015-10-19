function mini-vpn -d 'VPN connecting to server'
    nmcli con down id client-internet
    nmcli con down id client-service
    nmcli con up id client-service &
end
