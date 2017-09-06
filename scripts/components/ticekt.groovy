
def responseTxt = new URL("https://api.coindesk.com/v1/bpi/historical/close.json").text

def slurper = new groovy.json.JsonSlurper()

def result = slurper.parseText(responseTxt)

templateModel.data = responseTxt
templateModel.dataPoints = result.bpi