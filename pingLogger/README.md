# pingLogger.sh
Save the output of a ping with a timestamp beside each response. This is useful to leave a long running ping to determine when a particular device drops offline. Ping will be logged every 10 seconds.

The log file will open in the macOS console application so that it can be monitored while logging.

## Usage
```console
$ ././pingLogger/pingLogger.sh 10.0.0.1
Log: /Users/username/Downloads/PingLogger_2020-03-02_200758.log
IP: 10.0.0.1
Count: 360
```

## Variables
There are two variables available inside the script which can be overridden by the user is desired.

| Variable  | Default Value   | Description                                |
| --------- |:---------------:| ------------------------------------------ |
| LogDir    | $HOME/Downloads | The folder where log files should be saved |
| PingHours | 1               | How many hours to run the ping for         |