# ATorch S1 Data Logger
This leverages the Tuya Developer Cloud, tinyTuya https://github.com/jasonacox/tinytuya/ and Matplotlib https://matplotlib.org/ to use any ATorch S1 series smart socket as a power data logger.

It will provide line voltage, current, power, frequency, power factor and kilowatt hours at 1 second intervals.

If you want to log the data, it will write the readings out to a CSV file.

<img width="605" height="854" alt="image" src="https://github.com/user-attachments/assets/6968fd10-357d-4a12-accd-61f90fbee10f" />

## Installation

1. Download the 'ATorch S1 Data Logger.zip' file
2. Extract it to the desired install location
3. Follow the instructions in the 'READ ME.txt' file

When you press 'Connect' in the GUI, it will automatically poll the Tuya Cloud for the devices encryption keys, which roll regularly, run the tinyTuya 'scan' and 'wizard', which will then create/update the tinytuya.json, devices.json and snapshot.json files These will be created in the root directory.

## Enjoy!
