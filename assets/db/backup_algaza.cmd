@echo off
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%c_%%b_%%a)
del /F /Q %mydate%_iwebebs_all_algaza.sql
mysqldump --routines --skip-comments --skip-set-charset --skip-quote-names --skip-add-locks --skip-disable-keys -uroot -p iwebebs >> %mydate%_iwebebs_all_algaza.sql
