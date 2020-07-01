Run tests with `./run-sitespeed.sh`

Or if you prefer to keep the logs in a file:
```
./run-sitespeed.sh 2>&1 | tee ./logs/sitespeed.$(date "+%Y.%m.%d-%H.%M.%S").log
```