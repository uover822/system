pushd /opt/msr/system/docker/shared; make; popd
for name in associate context descriptor mediator properties reason relation store web
do
    pushd /opt/msr/$name/docker/stage
    if [ $name == "context" ]; then
        cp ../../Reason.java ../../Push.java ../../d?l.txt app
        rm -rf app/binaries; cp -r ../../binaries app
    else
        cp ../../$name.js ../../package.json app
        cp ../../srv/$name-stage.js app/srv
        if [ $name == "web" ]; then
            rm -rf app/www
            cp -r ../../www app
        fi
    fi
    docker build -t msr-$name:1 .
    popd
done
