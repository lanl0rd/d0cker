# source for dockerfile images

usually when doin if in bash its like

if [[ "$TARGETPLATFORM" == *"$amd"* ]] ; then add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; else add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"; fi

but for whatever reason its not liking that and an article posted this example of a conditional:

RUN if [ "$ENV" = "production" ] ; then yarn client:build:prod ; else yarn client:build ; fi

might need to go on separate RUN, i know for sdk man for spring boot i had to do that