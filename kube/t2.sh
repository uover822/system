:
#for i in {1..10}; do
pid=`curl -s --cookie-jar cj.txt -X POST 'http://localhost:8000/login' -d 'username=john&password=password' -c - | curl -s -b @- -X POST -H 'Content-Type: application/json' 'http://localhost:8000/api/metaroot.rcv' -d '{}' | jq -r '.id'`
curl -s -X POST -H 'Content-Type: application/json' 'http://localhost:4567/iot' --data-urlencode "{\"value\":\"${pid}_if this precedes that then it\'s neat|drl|drl|n|test2|p|that|a|before|n|this|d|that|d|precedes|sr\"}"
#sleep $((1 + $RANDOM % 4))
#done
