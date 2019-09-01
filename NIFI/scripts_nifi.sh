
#Regex
# Search fields 
(?:"feature":")(.*?)(?:")|(?:"result":')(.*?)(?:')
,((?:[^,]+,\s*){29})
(,([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*),([^,]*))


#São Paulo lat/long range
-23.321998, -46.853333					-23.286817, -46.230991
-23.108444, -46.318171					-23.945456, -46.490397

# Nifi ReplaceText Final
${now():toNumber()},${transaction},${predict},-23.${random():mod(999999):plus(1)},-46.${random():mod(999999):plus(1)}


#file sample
-1.3598071336738,-0.0727811733098497,2.53634673796914,1.37815522427443,-0.338320769942518,0.462387777762292,0.239598554061257,0.0986979012610507,0.363786969611213,0.0907941719789316,-0.551599533260813,-0.617800855762348,-0.991389847235408,-0.311169353699879,1.46817697209427,-0.470400525259478,0.207971241929242,0.0257905801985591,0.403992960255733,0.251412098239705,-0.018306777944153,0.277837575558899,-0.110473910188767,0.0669280749146731,0.128539358273528,-0.189114843888824,0.133558376740387,-0.0210530534538215,149.62


#splitted line sample (fields removed)
-3.13163341471517,2.98514393734951,1.18005804033689,-1.96973277021766,-0.18552327555223,-1.29463465585738,1.49538568647324,-1.28860072600236,5.09435629102461,4.8543491115206,1.65832459489055,-2.81149274287446,1.41413329116167,-0.92913068551883,0.151518398504756,-0.296340136137155,-0.593110135834167,-0.607536612043534,-1.52318393882157,2.34881337497375,-0.978621242965139,-0.556995508270886,-0.0207344021550603,0.628872986663921,0.292672451675044,0.560048287173115,0.729349062439307,-0.353849024103808,2.31

#minifi edge file location
mkdir /tmp/creditcard

#split creditcard file in 1 MB
split -l 1898 creditcard.csv


#configs file locations
/etc/hive/conf.cloudera.hive/core-site.xml, /etc/hive/conf.cloudera.hive/hive-site.xml

#minifi 
https://github.com/Thiagos25/HDF-Workshop
