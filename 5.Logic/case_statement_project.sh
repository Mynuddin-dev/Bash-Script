#!/usr/bin/bash

select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
    case "$city" in
        Tokyo)
            country="Japan";;
        London|Manchester)
            country="United Kingdom";;
        "Loss Angeles"|"New York")
            country="United states";;
        Moscow)
            country="Russia";;
        Dubai|"Abu Dhabi")
            country="United Arab Emirates";;
        Paris)
            country="France";;
        Bangalore|Pune)
            country="India";;
        Johannesburg)
            country="South Africa";;
        Istanbul)
            country="Turkey";;
        Milan)
            country="Italy";;
        Nairobi)
            country="Kenya";;
        Berlin)
            country="German";;
        Karachi)
            country="Pakistan";;
        Madrid)
            country="Spain";;
        

    esac

echo "This $city is in $country "

done