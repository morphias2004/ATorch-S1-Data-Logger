# ATorch S1 Data Logger

### Use your ATorch S1 series Smart Socket as a power data logger!

This leverages the Tuya Developer Cloud, tinyTuya https://github.com/jasonacox/tinytuya/ and Matplotlib https://matplotlib.org/ to use any ATorch S1 series smart socket as a power data logger.

It will provide line voltage, current, power, frequency, power factor and kilowatt hours at 1 second intervals.

If you want to log the data, it will write the readings out to a unique CSV file.


<img width="507" height="707" alt="image" src="https://github.com/user-attachments/assets/73912c9b-d082-4b10-9675-8de60efbf16b" />



## Installation

1. Download the 'ATorch S1 Data Logger.zip' file
2. Extract it to the desired install location
3. Follow the instructions in the 'READ ME.txt' file

When you press 'Connect' in the GUI, it will automatically poll the Tuya Cloud for the devices encryption keys, which roll regularly, run the tinyTuya 'scan' and 'wizard', which will then create/update the tinytuya.json, devices.json and snapshot.json files These will be created in the root directory.

## Enjoy!
