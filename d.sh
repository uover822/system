:
pid=`curl -s --cookie-jar cj.txt -X POST 'http://localhost:8000/login' -d 'username=john&password=password' -c - | curl -s -b @- -X POST -H 'Content-Type: application/json' 'http://localhost:8000/api/metaroot.rcv' -d '{}' | jq -r '.id'`
curl -s -X POST -H 'Content-Type: application/json' 'http://localhost:4567/iot' --data-urlencode "{\"value\":\"${pid}_[when]its 2022, I\'m cancer-free, making progress on the Monterey house, and riding in the TONV=\n\
c+rndm+_describes.fy2022()\n\
c+rndm+_describes.prostate(cancerous == 'no')\n\
c+rndm+_describes.site_planning(phase != 'eviction')\n\
c+rndm+_describes.tour_of_napa_valley(when == 'august_16th')\n\
[then]life is good;=insert(new javassist.ClassPool(true).makeClass('c+rndm+_life_is_good').toClass().getConstructor().newInstance()); sse.Push.main('+this.id+_is|r|good|a|quality|n|life|d');|dsl|dsl|n|\
if its 2022, I\'m cancer-free, making progress on the Monterey house, and riding in the TONV then life is good|drl|drl|n|mtest|p|fy2022|d|no|a|cancerous|n|prostate|d|assessment|a|phase|n|site_planning|d|august_16th|a|when|n|tour_of_napa_valley|d\"}"
