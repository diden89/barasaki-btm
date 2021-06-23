@echo off
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%c_%%b_%%a)
del /F /Q %mydate%_iwebebs_all_sikelopes.sql
mysqldump --routines --skip-comments --skip-set-charset --skip-quote-names --skip-add-locks --skip-disable-keys -uroot -padmin iwebebs >> %mydate%_iwebebs_all_sikelopes.sql
