# rename

```bash
#!/usr/bin/env bash

# Rename files using regular expression in linux
# https://stackoverflow.com/questions/11809666/rename-files-using-regular-expression-in-linux
# -n means no action
rename -n 's/Google(.*)/LinkedIn$1/' *.kt
# outputs:
# rename(GoogleCode2TokenRequest.kt, LinkedInCode2TokenRequest.kt)
# rename(GoogleErrorResponse.kt, LinkedInErrorResponse.kt)
# rename(GoogleRefreshTokenRequest.kt, LinkedInRefreshTokenRequest.kt)
# rename(GoogleServiceImpl.kt, LinkedInServiceImpl.kt)
# rename(GoogleService.kt, LinkedInService.kt)
# rename(GoogleToken.kt, LinkedInToken.kt)
# rename(GoogleUserInfo.kt, LinkedInUserInfo.kt)

# nested
# https://stackoverflow.com/questions/16541582/find-multiple-files-and-rename-them-in-linux
find . -name "old*.*" -exec rename 's/old/new/g' '{}' \;

# rename dir
find . -depth -type d -name "old" -exec rename 's/old/new/g' '{}' \;
```

### dry run
```bash
rename -n
find . -name "old*.*" -exec rename -n 's/old/new/' '{}' \;
```

### " vs '
The following script may get incorrect result.
```bash
find . -name "old*.*" -exec rename -n "s/old(.*)/new$1/" '{}' \;
```
as `$1` is processed by the shell, instead of "rename" program. correct way would be:
```bash
find . -name "old*.*" -exec rename -n 's/old(.*)/new$1/' '{}' \;
```

- see https://askubuntu.com/questions/431128/capture-groups-are-ignored-when-renaming-files