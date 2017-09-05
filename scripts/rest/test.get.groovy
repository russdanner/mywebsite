
def BTCResponseTxt = new URL("https://spotusd-data.btcc.com/data/pro/ticker?symbol=BTCUSD").text

def slurper = new groovy.json.JsonSlurper()

def result = slurper.parseText(BTCResponseTxt)


return result
