
def responseTxt = new URL("https://api.coindesk.com/v1/bpi/historical/close.json?start=2017-08-01&end=2017-09-15").text

def slurper = new groovy.json.JsonSlurper()

def result = slurper.parseText(responseTxt)

def points = []

result.bpi.each { prop, val ->
    points.add([date: prop, value: val ])
}

templateModel.dataPoints = points