#!/bin/bash
while getopts i:o:p:Cn optletter
do case $optletter in
	i) iflag=1; ival=$OPTARG;;
	o) oflag=1; oval=$OPTARG;;
	p) oflag=1; pval=$OPTARG;;
	C) Cflag=1;;
	n) nflag=1;;
	*) echo NoSuchOption $optletter
esac
done
if (((Cflag==1)&&(nflag==1)))
	then grep -e${pval} -i -n ${ival}
		if ((oflag==1))
		then grep -e${pval} -i -n ${ival} > ${oval}
		fi
	fi
if (((Cflag==0)&&(nflag==1)))
	then grep -e${pval} -n ${ival}
		if ((oflag==1))
		then grep -e${pval} -n ${ival} > ${oval}
		fi
	fi
if (((Cflag==0)&&(nflag==0)))
	then grep -e${pval} ${ival}
	if ((oflag==0))
	then grep -e${pval} ${ival} > ${oval}
	fi
fi