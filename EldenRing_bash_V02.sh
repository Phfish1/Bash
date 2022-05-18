#!/bin/bash
enemy0="alive"
deathcount=$((0))

##Game Start
echo "start your journey?: yes, no"
read start

if [[ $start == "yes" || $start == "Yes" || $start == "YES" || $start == "y" || $start == "Y" ]]; then
        ingame="True"
        con="True"

elif [[ $start == "no" || $start == "No" || $start == "NO" || $start == "n" || $start == "N" ]]; then
        echo "Come back only when you are ready"
        sleep 1
        exit
fi

##LOGO
clear

echo "       :::::::::: :::        :::::::::  :::::::::: ::::    :::          :::::::::  ::::::::::: ::::    :::  :::::::: "
echo "      :+:        :+:        :+:    :+: :+:        :+:+:   :+:          :+:    :+:     :+:     :+:+:   :+: :+:    :+: "
echo "     +:+        +:+        +:+    +:+ +:+        :+:+:+  +:+          +:+    +:+     +:+     :+:+:+  +:+ +:+         "
echo "    +#++:++#   +#+        +#+    +:+ +#++:++#   +#+ +:+ +#+          +#++:++#:      +#+     +#+ +:+ +#+ :#:          "
echo "   +#+        +#+        +#+    +#+ +#+        +#+  +#+#+#          +#+    +#+     +#+     +#+  +#+#+# +#+   +#+#    "
echo "  #+#        #+#        #+#    #+# #+#        #+#   #+#+#          #+#    #+#     #+#     #+#   #+#+# #+#    #+#    "
echo " ########## ########## #########  ########## ###    ####          ###    ### ########### ###    ####  ########      "
echo ""
echo ""
echo ""
sleep 0.25

##Game checker
##Elden Ring
while [[ $ingame == "True" && $con == "True" ]]; do
        echo "you meet your first enemy. You reach for your sword and get ready for battle"
        echo "press enter"
        read

        ##Enemy0 FIGHT
        while [[ $enemy0 == "alive" && $con == "True" ]]; do

                player_dice=$(( $RANDOM % 1 ))
                echo "You trow the dice and get a <( $player_dice )>"
                sleep 1.25
                enemy_dice=$(( $RANDOM % 6 ))
                echo "The enemy gets a <( $enemy_dice )>"
                sleep 1

                ##Win checker
                if [[ $player_dice > $enemy_dice ]]; then
                        echo "You won"
                        echo "EZ"
                        sleep 1.5
                        echo "You proceede to Fortnite dance on the level 1 body... "
                        enemy0="dead"

                ## Death checker ##
                else
                        deathcount=$(( (deathcount) + (1) ))
                        enemy0deaths=$(( (enemy0deaths) + (1) ))


                        ##TAUNTING :))
                        if [[ $enemy0deaths == 1 ]]; then
                                echo "You Died!"
                                sleep 0.75
                        elif [[ $enemy0deaths == 2 ]]; then
                                echo "You Died!"
                                sleep 0.5
                                echo "again..."
                                sleep 0.3
                        elif [[ $enemy0deaths == 3 ]]; then
                                echo "Damn"
                                sleep 1.25
                                echo "You suck ASS man"
                        elif [[ $enemy0deaths ==  4 ]]; then
                                echo "Doood its the first enemy bro???"
                                sleep 2
                                echo "My grandma could beat this!"
                                sleep 3.5
                                echo "While you were crying my grandma actually finished Elden Ring ;(((("
                        elif [[ $enemy0deaths == 5 ]]; then
                                echo "JEEEEEEEZ!!!"
                        elif [[ $enemy0deaths == 8 || $enemy0deaths == 10 ]]; then
                                echo "Trash"
                        else
                                echo "..."
                        fi


                        #CONTINUE Option
                        echo "continue? (y/n)"
                        read enemy0con
                        if [[ $enemy0con == "n" || $enemy0con == "N" ]]; then
                                con="False"
                        fi

                fi


        done


ingame="False"

done

echo "You are done"
