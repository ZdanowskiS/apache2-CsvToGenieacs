# apache2-CsvToGenieacs
Apache2 module sending CSV to Genieacs

# Description
This Apache2.4 module can be used in similar way as [LightCsv-Genieacs](https://github.com/ZdanowskiS/LightCsv-Genieacs).

It allows to write data to CSV and use those CSV in communication with Genieacs. It only responds to Genieacs calls for configuration. Without ability to send them on request from WWW like LightCSv-Genieacs.

# Usage
Project was created with
```
apxs -g -n 
```
It can be compiled with
```
apxs -c i -ljson-c mod_CsvtoGenieacs.s
```
In case of errors make sure you have all needed libs.

Apache2 requires proper configuration like:

```
Path "/var/www/html/genieacs/"
Token "abcd1"

LoadModule CsvtoGenieacs_module /usr/lib/apache2/modules/mod_CsvtoGenieacs.so
<Location /csvtogenieacs>
    SetHandler csvtogenieacs
</Location>
<Location /csvtogenieacsfile>
    SetHandler csvtogenieacsfile
</Location>
```
