branch=$1
appbase=`echo ${branch%/branches*}`
appname=`echo  ${appbase##*/}`
branchname=`echo ${branch##*branches/}`
echo "app=$appname svn base path=$appbase branchname=$branchname"
projectfolder=`echo "$appname-$branchname"` 
mkdir $projectfolder
cd   $projectfolder
svn co $branch $branchname
svn co "$appbase/trunk" trunk
