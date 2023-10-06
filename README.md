# ips2crash

A small utility for converting macOS crashreport files (.ips) into text output which is the same as
what you would see using Console.app to open them. Note that .ips files are json, so you can also
extract individual data fields out of them pretty easily.

Works with macOS 12 (Monterey), macOS 13 (Ventura), macOS 14 (Sonoma) as of 2023-10-06. 
Uses private APIs so no guarantees moving forward.

The crash reports generated by the system can usually be found in 
`~/Library/Logs/DiagnosticReports`.

Should build using QtCreator, uses some private CrystalIDEA deployment scripts.

Based on https://github.com/dmaclach/crashdump
