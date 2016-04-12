SCALA_HOME='/Users/huweijun/dev/scala/tools/scala-2.11.8'
export SCALA_HOME
MAVEN_HOME='/Users/huweijun/dev/java/tools/apache-maven-3.3.9'
export MAVEN_HOME

JAVA_HOME=`/usr/libexec/java_home`
export JAVA_HOME

PATH=$JAVA_HOME/bin:$SCALA_HOME/bin:$PATH:$MAVEN_HOME/bin
export PATH

alias g2w='cd /Users/Daniel/dev/java/workspace'
alias g2d='cd /Users/Daniel/dev/'
alias g2dw='cd /Users/Daniel/Downloads'
alias st='svn status'
alias g2t='cd $TOMCAT_HOME'
alias g2tr='cd /Users/Daniel/dev/java/workspace/trunk'
alias mysql=/usr/local/mysql/bin/mysql
alias sci='svn ci'
alias sin='svn info'
alias sdiff='svn diff'

function jsonFormat2Clipboard(){
        curl $1  | python -m json.tool | pbcopy
}


function jsonFormat2Open(){
        file_name="$TMPDIR/json_format_$RANDOM.txt"
        curl $1  | python -m json.tool >> file_name
        open file_name
}

function cl(){
        if [ $# -eq 2 ] ;  then
                awk -F "[$1]" -v col=$2  '{print $col}'
        else
                awk -v col=$1 '{print $col}'
        fi
}

function myssh(){
        ssh weijun.huwj@$1
}


function prd(){
        myssh  login1.cm8.alibaba.org
}
