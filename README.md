# gp-work-utils
## Prerequisites
To set up, you must create a `.env` file in the project root:
```
WIKI_USERNAME: Username
WIKI_PASSWORD: Password
```

You must have a `wikis.txt` file in the project root. This file lists wiki names, for which the rest of the URL is 
automatically formed (protocol, `.gamepedia.com`, etc.):
```
1849
abzu
adventurermanager
adventuresoftree
aegisdefenders
etc...
```

You must also have a `tmp` folder in the project root. If `patrol_ms` is being used, you must create a blank file 
`tmp/patrol_ms_last.txt`.
