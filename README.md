# unrar

runs 'unrar' within docker container with cpu and memory limit for security reasons

## why

[unrar vulnerabilities](https://www.cvedetails.com/vendor/1914/Rarlab.html)

## how

always run install before you use unrar
`./install`

then go to the directory where the rar file is and run
`unrar x downloaded.rar .`
