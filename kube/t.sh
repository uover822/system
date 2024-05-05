:
#for i in {1..10}; do
pid=`curl -s --cookie-jar cj.txt -X POST 'http://localhost:8000/login' -d 'username=john&password=password' -c - | curl -s -b @- -X POST -H 'Content-Type: application/json' 'http://localhost:8000/api/metaroot.rcv' -d '{}' | jq -r '.id'`
curl -s -X POST -H 'Content-Type: application/json' 'http://localhost:4567/iot' --data-urlencode "{\"value\":\"${pid}_if I\'m eating a hot fudge sundae topped with almonds and a maraschino cherry on top then life is good|drl|drl|n|\
atest|p|am eating|r|hot_fudge|a|type|n|\
if I\'m having ice cream then I\'m eating a hot fudge sundae|drl|drl|n|\
sundae|p|maraschino_cherry|d|on top|r|maraschino|a|type|n|maraschino_cherry|d|topped with|r|almonds|a|type|n|almonds|d|\
I|d|am having|r|ice_cream|d\"}"
#sleep $((1 + $RANDOM % 4))
#done
