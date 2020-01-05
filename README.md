# GUI-Shing
GUI-Shing is a terminal-gui version of [Shing](https://github.com/SteveHewson/Shing)<br>

Currently works only with hosts that are active and accept ICMP requests.<br>
Need to adapt the behaviour of the script to output custom responses to various error messages.<br>

Yes, they both have the same name in the script and do exactly the same, except that the GUI-Shing had to be labelled differently to be able to have a seperate repository to keep future contributions (if any) as individual as possible.<br>

Here are some screenshots from GUI-Shing:<br>
![alt_text](https://github.com/SteveHewson/GUI-Shing/blob/master/g_shing_1.png)

![alt_text](https://github.com/SteveHewson/GUI-Shing/blob/master/g_shing_2.png)

![alt_text](https://github.com/SteveHewson/GUI-Shing/blob/master/g_shing_3.png)


## Installation
If you are running the script on iSH, I realised that iSH emulator by default does not have `bash`, `dialog` & `git` installed.
Install them by typing:
```
apk add bash && apk add dialog && apk add git
```
Once the packages are installed, run the script:
```
./g_shing.sh
```

## NOTE
Please note that the script creates a temporary text file where the ping output is stored.<br>
This is useful for the user to take a look at the output, however can be omitted if not needed.<br>
The name of the temporary file is `qbtumwxbvjhwqVFusijfitObpJiYcc.txt`<br>
Hopefully the user does not have any file with the same name, or it will be overwritten.<br>
