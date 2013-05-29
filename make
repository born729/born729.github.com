if [ "$1" = '' ]; then
 bundle exec rake generate
 bundle exec rake deploy
elif [ "$1" = 'preview' ]; then
 bundle exec rake generate
 bundle exec rake preview
else 
 bundle exec rake new_post["$1"]
fi
