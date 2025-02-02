buildrun:
    # Turn the Roc app into a library so go can use it
    roc build --lib examples/bfg.roc --output host/libapp.so   
    go build -C host -buildmode=pie -o ../platform/dynhost
    roc preprocess-host platform/dynhost platform/main.roc platform/libapp.so
    # run the actual app
    roc examples/bfg.roc
