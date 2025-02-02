# A roc plaform for integrating with the [betfair api](https://betfair-developer-docs.atlassian.net/wiki/spaces/1smk3cen4v3lu3yomq5qye0ni/overview)

## Running
The following env vars need to be set
  + BFG_USERNAME
  + BFG_PASSWORD
  + BFG_APP_KEY

The following certs need to be avaliable in ~/.config/bfg
  + betfair-2048.crt
  + betfair-2048.key

## TODO
 - In Go do the initialization process to login and setup stream.
 - From platform pass all stream messages to Roc as strings then do the JSON parsing in Roc
    + Question: Should I parse JSON and send proper types to Roc from platform or just send string and let Roc parse?
 - Expose effects for subscribe/unsubscribe/trade etc
 - Handle lifecycle of order using opaque types with phantom types
 - Use context module to propagate cancelation signal, good for long running process to cancel on ctrl-c for example. 
  - When creatig a client it should also schedule a keep-alive that calls ever 10hours.

# Ladder
  * https://github.com/elliotchance/orderedmap
