# IP2INT
Simple Matlab Functions that reads an xlsx and converts IP addresses to INT or DOUBLE

#use
In matlab command prompt use the following to load a cell array 'A' in the workspace
```
A = convertIP()
```
Then use the following command to convert the cell array 'A' in a matrix 'M'
```
M = cell2mat(A)
```

#XLSX Format
My XLSX file is composed of different columns organised as follows 
```
PacketNumber, Timestamp, Source, Destination, Type, Port
```
