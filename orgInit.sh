sfdx force:org:create -s -f config/project-scratch-def.json -a dreaminvest
sfdx force:source:push
sfdx force:user:permset:assign -n dreaminvest
sfdx force:data:bulk:upsert -s Sector__c -f ./data/sectors.csv -w 1 -i Sector_Id__c
sfdx force:data:bulk:upsert -s Fund__c -f ./data/funds.csv -w 1 -i Id
sfdx force:org:open -p /lightning/page/home
#
