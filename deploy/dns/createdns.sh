sleep 30
LBNAME=`/usr/local/bin/kubectl describe service api -n mycart|grep Ingress|awk '{print $NF}'`
sed -i "s/FELBNAME/$LBNAME/g" dns.json
aws route53 change-resource-record-sets --hosted-zone-id Z31HHDW3I36ALW --change-batch file://dns.json
