# fix for webpack using operating system encryption provider (openssl) 
# when node V.17 tries to provide native libraries and these libraries 
# to not include support for md4 algorithm, which is deprecated. 
# project liveview_pro_course needs this.  Safe to remove after a while. 
#export NODE_OPTIONS=--openssl-legacy-provider

