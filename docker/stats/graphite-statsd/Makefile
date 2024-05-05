build :
	docker build -t msr-graphite-statsd .

run :
	docker run -d --restart=always -p 8100:80 -p 2003-2004:2003-2004 -p 2023-2024:2023-2024 -p 8125:8125/udp  -p 8126:8126  msr-graphite-statsd

clean :
	rm -f *~

.PHONY : build clean

