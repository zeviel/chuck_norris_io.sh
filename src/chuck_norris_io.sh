#!/bin/bash

api="https://api.chucknorris.io/jokes"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_random_joke() {
    # 1 - category: (string): <category name>
    curl --request GET \
        --url "$api/random?category=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_joke_categories() {
    curl --request GET \
        --url "$api/categories" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_joke_by_id() {
    # 1 - id: (string): <joke id>
    curl --request GET \
        --url "$api/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function search_jokes() {
    # 1 - query: (string): <search query>
    # 2 - category: (string): <category name>
    curl --request GET \
        --url "$api/search?query=$1&category=$2" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
