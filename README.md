Metric Calculator - a-CDI / a-CFI
Windows 64-bit

STARTING THE APPLICATION
Extract the complete distribution package, then double-click Start_Calculator.cmd.
Keep the launch script and the EXE in the same folder. The launch script can also
look for the executable in a release subfolder.
The first launch may take several tens of seconds.

A full installation of MATLAB, Python, or Microsoft Excel is not required.
If MATLAB R2021a is not installed, install MATLAB Runtime R2021a (9.10), Windows 64-bit.
Official download: https://www.mathworks.com/products/compiler/matlab-runtime.html
If MATLAB R2021a is already installed and the matlab command is available,
the launch script will automatically reuse its runtime libraries.

CALCULATING METRICS
1. Click Import SPD to load a CSV, TXT, TSV, XLSX, or XLS spectral file.
2. If an Excel workbook has multiple worksheets, select the sheet containing the spectra.
3. Select the observer age, field of view, reference illuminant, luminance,
   and viewing-environment parameters.
4. Click Calculate to view a-CDI and a-CFI.
5. Click Export results to save the results as CSV or Excel.

Displayed and exported a-CDI and a-CFI values are rounded to integers.
Exports contain three columns: Spectrum, a-CDI, and a-CFI.
Recalculate after changing any parameters. For some parameter combinations,
a-CDI may be undefined; the application displays Undefined and exports NaN.
You can change the observer age and calculate again.

SPECTRAL INPUT FORMAT
The first column contains wavelength in nm. Each subsequent column contains
one energy-based spectral power distribution (SPD).
Title or explanatory rows may appear at the top of the file; the row immediately
before the numerical data is used for spectrum names.

Files with a single header row or numerical data without a header are also supported.
Spectra must cover 380-780 nm. Different sampling intervals and relative energy
values are supported.
Wavelengths do not need to be sorted. Duplicate wavelengths, missing values,
negative values, and all-zero spectra are rejected.
Import energy-based spectra, rather than photon-count spectra or reflectance.
Use commas for CSV files; tabs are recommended for TXT/TSV files.
Use the included example_spd.csv to become familiar with the application.

PARAMETER RANGES
Observer age: 20-100 years.
Field of view: 2 degrees or 10 degrees.
LA > 0; 0 < Yb <= 100.
Use the same parameter settings when comparing multiple spectra.
