echo "~~~~~~~~~WELCOME TO IUG7~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will do a html       ~"
echo "~ parsing                        ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


$site = Read-Host "Type the goal link"
$web = Invoke-WebRequest -uri $site -Method Options
echo " "
echo "The server is running:"
$web.headers.server
echo " "
echo "and allows these methods: "
$web.headers.allow
echo " "
echo  "found links"
$web2 = Invoke-WebRequest -uri $site
$web2.links.href | Select-String http://
