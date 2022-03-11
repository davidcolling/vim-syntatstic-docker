touch $1
cp $1 $DOCKER/vim-syntastic-docker/cpbox
docker run -it --rm --mount type=bind,src="$DOCKER/vim-syntastic-docker/cpbox/",dst="/root" vim-syntastic-docker vim $1
cp $DOCKER/vim-syntastic-docker/cpbox/$1 .

