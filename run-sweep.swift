import string;
import io;
import python;
import sys;

float results[string];

settingsFilename = argv("settings");

// Obtain list of parameter combinations
parametersString = python("import sweep", sprintf("sweep.determineParameters(\"%s\")", settingsFilename));
parameters = split(parametersString, ":");

// Run experiments in parallel
foreach param in parameters
{
    resultString = python("import sweep", sprintf("repr(sweep.evaluateOne(%s))", param));
    results[param] = string2float(resultString);
}

// Call Python to compute stats of this array of results
python("import sweep", sprintf("sweep.computeStats(\"%s\")", repr(results)));
