@echo off
title killerhack Gmail
cls

echo(
echo( [Ingresa tu Gmail]
echo(

set /p "gmail=Esperando Gmail > "

echo(
echo( [Ingresa tu Password]
echo(

set /p "Password=Esperando Password > "

echo(
echo( [Ingresa El Gmail A Enviar El Msg]
echo(

set /p "Amigmail=Esperando Gmail > "

echo(
echo( [Ingrese el Titulo del correo]
echo(

set /p "titleco=Esperando titulo > "

echo(
echo( [Ingresa El Msg]
echo(

set /p "Msg=Msg > "

if exist "correo.ps1" (del /f/q "correo.ps1") 

echo $EmailFrom = '%gmail%'>>"correo.ps1"

echo $EmailTo = '%Amigmail%'>>"correo.ps1"

echo $Subject = '%titleco%'>>"correo.ps1"

echo $Body = '%Msg%'>>"correo.ps1"

echo $SMTPServer = 'smtp.gmail.com'>>"correo.ps1"

echo $SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)>>"correo.ps1"

echo $SMTPClient.EnableSsl = $true>>"correo.ps1"

echo $SMTPClient.Credentials = New-Object System.Net.NetworkCredential('%gmail%', '%Password%');>>"correo.ps1"
echo $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)>>"correo.ps1"

powershell.exe -ExecutionPolicy Bypass -File "correo.ps1"

if exist "correo.ps1" (del /f/q "correo.ps1") 
