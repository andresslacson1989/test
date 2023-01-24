#!/bin/bash
/bin/cat <<"BytesPH3" >/root/telegram.sh
    #!/bin/bash
    GROUP_ID='5075831208'
    BOT_TOKEN='5405146881:AAEWI1C917dE_K8JzKwR4F_v2s1s8jX-8aw'

    # this 3 checks (if) are not necessary but should be convenient

    if [ "$#" -ne 1 ]; then
        echo "You can pass only one argument. For string with spaces put it on quotes"
        exit 0
    fi

    curl -s --data "text=$1" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null

BytesPH3

    chmod +x /root/telegram.sh
    cd
    ./telegram.sh "Server $IP Installation Finished"
