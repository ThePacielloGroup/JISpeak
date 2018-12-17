# JISpeak

The JISpeak batch file is used to enable/disable the JAWS Inspect speech capture feature.

# Usage

Running jispeak.cmd with no options will provide usage instructions.

`jispeak`

> Usage: 'jispeak on' to begin capturing, or 'jispeak off' to stop capturing.  
> (NOTE: Capturing will overwrite &lt;path to log&gt; if it exists)

Running jispeak.cmd with the 'on' option will enable the JAWS Inspect speech capture feature.

`jispeak on`

> Capturing JAWS Inspeak speech output to &lt;path to log&gt;
  
If the log file already exists, the batch file will prompt to overwrite it before continuing.

> &lt;path to log&gt; already exists. If you continue, the file will be overwritten. Do you want to continue? [Y,N]?
  
Running jispeak.cmd with the 'off' option will disable the JAWS Inspect speech capture feature.

`jispeak off`

> Capturing complete  
>  Volume in drive C has no label.  
>  Volume Serial Number is FA55-A614  
>   
>  Directory of &lt;path to log&gt;  
>   
> 08/29/2018  12:19 PM               141 jawsinspectspeechoutput.csv  
>                1 File(s)            141 bytes  
>                0 Dir(s)  92,577,894,400 bytes free  

By default, the log file is captured to `%userprofile%\JAWSInspectSpeechOutput.csv`.
