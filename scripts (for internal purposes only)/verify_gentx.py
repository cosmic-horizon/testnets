import os 
import json

for filename in os.listdir('gentx'):
    if '.json' in filename:
        file = open(os.path.join('gentx', filename))
        gentx = json.loads(file.read())
        if float(gentx['body']['messages'][0]['commission']['rate']) >= float(gentx['body']['messages'][0]['commission']['max_rate']) or float(gentx['body']['messages'][0]['commission']['rate']) > 1000000000000 or float(gentx['body']['messages'][0]['value']['amount']) < 1000000000000:
            print("Bad GenTx: " + filename)