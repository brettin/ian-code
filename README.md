# ian-code
Simple Swift-Python code to run parameter sweeps

Usage: run-swift.sh -settings=$PWD/settings

Files:
- **run-swift.sh**: sets up to run **run-sweep.swift** on Beagle at UChicago
- **run-sweep.swift**: calls **sweep.py** to retrieve sweep parameters from **settings.json**, then run each set, then compute stats
- **settings.json**: sweep parameters. Parameters must be labeled "1", "2", "3, "4", ... 
- **sweep.py**: code to configure parameters, evaluate a set of parameters, and compute stats at end of run
