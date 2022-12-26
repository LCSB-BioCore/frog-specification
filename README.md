
# FROG reproducibility reports -- specification

FROG is a small format that describes the expected workings of a
constraint-based metabolic model. Information about FROG can be found at
https://www.ebi.ac.uk/biomodels/curation/fbc and
https://fbc-curation.readthedocs.io/en/latest/ .

This repository contains the working draft of the FROG format specification.
The main target is to provide a clear, unambiguous reference for software
authors and curators on how to implement FROG report generation software, and
how to work with FROG report contents.

## Getting the specification

The specification PDF should build automatically via CI; currently you may find
a PDF in "artifacts" in the "Actions" tab.

You may also clone the repository and build the PDF yourself. For that, you
will only need a working TeXlive distribution and GNU make, which should be
present on almost any modern unix system. Simply typing `make` in a cloned
repository should produce the file `frog.pdf`.

## Working on the specification

FROG report format is expected to develop. If you have an idea on how to
improve the specification, add clarification or fix ambiguities, or want to add
a new feature to the reports, please open a GitHub issue (to discuss) or send
us suggestions via pull requests.

The specification is versioned using git tags. Versioning follows the [semantic
versioning specification](https://semver.org/) to allow simple decisions about
version compatibility and feature availability.
